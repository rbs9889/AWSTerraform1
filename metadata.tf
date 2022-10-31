#note update the  location and token on test/enviroment.yaml
# terragrunt fmt 
# terragrunt apply -var "aws_access_key=$AWS_ACCESS_KEY" -var "aws_secret_key=$AWS_SECRET_KEY" --auto-approve
# terragrunt destroy -var "aws_access_key=$AWS_ACCESS_KEY" -var "aws_secret_key=$AWS_SECRET_KEY" --auto-approve
