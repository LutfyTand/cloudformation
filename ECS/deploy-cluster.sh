#!/bin/bash
aws cloudformation create-stack \
--stack-name <stack_name> \
--template-body file://ecs-cluster.yaml \
--parameters ParameterKey=DesiredCapacity,ParameterValue=<number_desired_capacity> \
ParameterKey=InstanceType,ParameterValue=<instances_type> \
ParameterKey=KeyPair,ParameterValue=<name_your_pem> \
--capabilities CAPABILITY_IAM 