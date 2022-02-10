#!/bin/bash
# echo "Total arguments : $#"
echo "profile: $1"
aws sso login  --profile $1
python3 ~/aws_sso.py $1 
export AWS_PROFILE=$1