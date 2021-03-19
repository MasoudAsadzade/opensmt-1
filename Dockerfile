FROM ubuntu:20.04 AS osmpt_base
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt install -y openssh-server iproute2 openmpi-bin openmpi-common iputils-ping \
    && mkdir /var/run/sshd \
    && sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd \
    && setcap CAP_NET_BIND_SERVICE=+eip /usr/sbin/sshd \
    && useradd -ms /bin/bash osmt \
    && chown -R osmt /etc/ssh/ \
    && su - osmt -c \
        'ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -N "" \
        && cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys \
        && cp /etc/ssh/sshd_config ~/.ssh/sshd_config \
        && sed -i "s/UsePrivilegeSeparation yes/UsePrivilegeSeparation no/g" ~/.ssh/sshd_config \
        && printf "Host *\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config'
WORKDIR /home/opsmt
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
EXPOSE 22

################
FROM osmpt_base AS builder
ENV CMAKE_BUILD_TYPE Release
ENV INSTALL /home/opensmt-1
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt install -y apt-utils make cmake \
         build-essential libgmp-dev bison flex libubsan0 \
     zlib1g-dev libopenmpi-dev libedit-dev git
RUN  git clone https://github.com/MasoudAsadzade/opensmt-1.git --branch local --single-branch
RUN cd opensmt-1 && sh ./awcCloudTrack/awsRunBatch/make_opensmt.sh

################
FROM osmpt_base
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt install -y awscli python3 mpi
COPY --from=builder /build/src/bin/opensmt /build/src/bin/opensmt
ADD awsRunBatch/make_combined_hostfile.py supervised-scripts/make_combined_hostfile.py
ADD awsRunBatch/mpi-run.sh supervised-scripts/mpi-run.sh
ADD awsRunBatch/run_aws_osmt.sh run_aws_osmt.sh
RUN chmod 755 supervised-scripts/make_combined_hostfile.py
#RUN chmod 777 awcCloudTrack/awsRunBatch
RUN chmod 755 supervised-scripts/mpi-run.sh
RUN chmod 755 awcCloudTrack/awsRunBatch/run_aws_osmt.sh
USER osmt
CMD ["/usr/sbin/sshd", "-D", "-f", "/home/opsmt/.ssh/sshd_config"]
#CMD supervised-scripts/mpi-run.sh
RUN sleep 9000000
#CMD ["/build/src/bin/opensmt", "/opensmt-1/regression/QF_UF/NEQ004_size4.smt2"]