#!/bin/bash
aws cloudformation create-stack \
--stack-name <stack_name> \
--template-body file://mysql.yaml \
--parameters ParameterKey=VpcId,ParameterValue=<vpc_id> \
ParameterKey=Subnets,ParameterValue=\"<subnet_id1>,<subnet_id2>\" \
ParameterKey=DBName,ParameterValue=<db_name> \
ParameterKey=DBUsername,ParameterValue=<db_user> \
ParameterKey=DBPassword,ParameterValue=<db_password> \
ParameterKey=DBClass,ParameterValue=<instances_type> \
ParameterKey=DBAllocatedStorage,ParameterValue=<number_allocated_storage> \