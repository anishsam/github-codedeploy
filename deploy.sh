tar cvf demoRevision.tar *
aws s3 cp demoRevision.tar s3://sams-codedeploy/
aws deploy register-application-revision --application-name DemoApp --s3-location bundleType=tar,eTag=aa164daf71f38e2f91fdde304a85d922,bucket=sams-codedeploy,key=demoRevision.tar
