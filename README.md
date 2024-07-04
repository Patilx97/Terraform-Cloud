# To Execute from Terraform Cloud

## 1. Set Up Terraform Cloud Workspace:

Ensure you have a Terraform Cloud account and create a new workspace.
In your workspace, go to the "Variables" tab.

## 2. Add Environment Variables:
Add the following environment variables with your AWS credentials:
AWS_ACCESS_KEY_ID (value: your AWS access key)
AWS_SECRET_ACCESS_KEY (value: your AWS secret key)

## 3. Upload Your Terraform Configuration:
Upload your Terraform script to the Terraform Cloud workspace. You can do this by linking your VCS repository or uploading the files directly.

## 4. Set Up Variables:
In the "Variables" tab, add the following Terraform variables:
access_key (value: empty, will be populated by environment variable)
secret_key (value: empty, will be populated by environment variable)
region_name (value: your desired region, default is "us-east-1")
instance_type (value: your desired instance type, default is "t2.micro")
subnet_id (value: your subnet ID)

## 5. Run Terraform Plan:
In the "Runs" tab, click on "Queue plan" to start a new plan. Terraform Cloud will create an execution plan showing what resources will be created.

## 6. Review and Apply the Plan:
Review the execution plan to ensure everything looks correct.
If everything is correct, click "Confirm & Apply" to execute the plan and create the resources.

## 7. Verify the Deployment:
Once the apply process is complete, log in to your AWS Management Console and navigate to the EC2 Dashboard. You should see an instance running with the name "terraform1".

By following these steps, you'll have a secure and automated process to deploy an EC2 instance using Terraform Cloud.







