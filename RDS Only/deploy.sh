#!/bin/bash
aws cloudformation create-stack \
--stack-name <stack_name> \
--template-body file://mysql.yaml \
--parameters ParameterKey=DatabaseName,ParameterValue=<db_name> \
ParameterKey=DatabaseUsername,ParameterValue=<db_user> \
ParameterKey=DatabasePassword,ParameterValue=<db_password> \
ParameterKey=DatabaseInstanceType,ParameterValue=<instances_type> \
ParameterKey=AllocatedStorage,ParameterValue=<number_allocated_storage>