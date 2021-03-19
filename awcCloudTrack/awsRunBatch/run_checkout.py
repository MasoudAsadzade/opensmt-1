#!/usr/bin/env python3

import subprocess
import re

result = subprocess.run(['sh','./run_aws_osmt.sh','../regression/QF_LRA'], stdout=subprocess.PIPE)
result.stdout
print(result.stdout.decode('utf-8'))

satmatchedStr=re.findall("sat", result.stdout.decode('utf-8'))
unsatmatchedStr=re.findall("unsat", result.stdout.decode('utf-8'))
#timeout=re.findall(r"[-+]?\d*\.\d+|\d+", matchedStr.group())
print("Sat Matched is: ", satmatchedStr)
print("Unsat Matched is: ", unsatmatchedStr)
#import subprocess
#py2output = subprocess.check_output(['sh','./run_aws_osmt.sh','../regression/QF_LRA'])
#print('py2 said:', py2output)