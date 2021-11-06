!#/bin/bash
aws ec2 run-instances --image-id ami-0f19d220602031aed --count 1 --instance-type t2.micro --key-name Devops21 --region us-east-2
