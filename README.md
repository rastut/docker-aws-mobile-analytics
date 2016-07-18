#  Redshift Autoexporter based on Alpine, for AWS Mobile Analytics

This repo contains a docker file and the config file in order to prepare a custom docker image, for AWS Mobile Analytcis export service. 
Normally used when you wanna use your existing redshift cluster for export all the data of aws.

## How it works?

You only need to fill all the info on the data_export.config and run `docker build -t TAG .`. 

You can check all the docs on AWS.

http://docs.aws.amazon.com/mobileanalytics/latest/ug/auto-export.html
