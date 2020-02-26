aws cloudformation create-stack \
--stack-name rds-mysql-catalyst \
--template-body file://mysql.yaml \
--parameters ParameterKey=DatabasePassword,ParameterValue=ZXasqw12