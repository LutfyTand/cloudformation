#!/bin/bash
aws cloudformation create-stack \
--stack-name <stack_name> \
--template-body file://service_web.yaml \
--parameters ParameterKey=ServiceName,ParameterValue= <service_name> \
ParameterKey=RepositoryCredentials,ParameterValue=<arn_your_secret_manager> \
ParameterKey=ImageUrl,ParameterValue=<docker_image> \
ParameterKey=StackName,ParameterValue=<name_your_stack_cluster> \
ParameterKey=Role,ParameterValue=<arn_ecsTaskExecutionRole> \
ParameterKey=LoadBalancerHostPattern,ParameterValue=<domain_name> \
ParameterKey=Priority,ParameterValue=<number_of_priority>