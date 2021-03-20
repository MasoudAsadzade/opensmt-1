  #!/bin/bash

if [ $# != 1 ]; then
    echo "Usage: $0 <provide shared bucket dir>"
    exit 1
fi

#for folder in "$1"/*; do
  #  for file in "$folder"/*/*; do
      ./build/src/bin/opensmt $1
 #   done
#done
