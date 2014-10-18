# Using S3 as a Maven Repository

## Install aws command line tools

1. Install Python
2. Install [pip](http://pip.readthedocs.org/en/latest/installing.html)
3. Install AWS [command line client](http://aws.amazon.com/cli/) via pip

## Configure AWS command line tools

You should create the following file : **~/.aws/config**
```json
[default]
output = json
region = us-west-2
aws_access_key_id = --your acesss key id--
aws_secret_access_key = --your secret access key--
```

## Create a public bucket

Example:

    ./create-public-bucket.sh sroysf-maven-aws-repo

## Configure your local maven settings file

Edit the following file:  **~/.m2/settings.xml**

These instructions map to the README for the [aws-maven](https://github.com/spring-projects/aws-maven) open source project.

Edit your settings file and add the following:

```xml
<settings>
  ...
  <servers>
    ...
    <server>
      <id>aws-release</id>
      <username>your access key id</username>
      <password>y</password>
    </server>
    <server>
      <id>aws-snapshot</id>
      <username>0123456789ABCDEFGHIJ</username>
      <password>0123456789abcdefghijklmnopqrstuvwxyzABCD</password>
    </server>
    ...
  </servers>
  ...
</settings>
```
