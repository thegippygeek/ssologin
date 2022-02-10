AWS SSO needs to be installed.

To automatically configure sso use the command $ aws configure sso --profile Sandbox 

or manually update ~/.aws/config

[profile Sandbox]
sso_start_url = 
sso_region = ap-southeast-2
sso_account_id = 
sso_role_name = AdministratorAccess
region = ap-southeast-2
output = json

Then to login run. (ensure you have a default browser open)

$ aws sso login --profile Sandbox


There is currently an issue with cli not reading the sso creds, to work around this there is a python script we run to overcome this.

python3 aws_sso.py <profile> 

e.g: python3 aws_sso.py Sandbox

Then export in the term the profile you want to use.
$ export AWS_PROFILE=Sandbox

To make life easier I have included a shell script that does this all for you. ssoLogin.sh

run the following.

$ . ~/ssoLogin.sh Sandbox

run an aws command, like a aws s3 ls 

it should return a list of buckets for Prod US if you used the profile mentioned here.

