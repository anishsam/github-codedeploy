tar cvf demoRevision.tar *
aws s3 cp demoRevision.tar s3://sams-codedeploy/
aws deploy register-application-revision --application-name DemoApp --s3-location bundleType=tar,eTag=aa164daf71f38e2f91fdde304a85d922,bucket=sams-codedeploy,key=demoRevision.tar

# To package and push
# aws deploy push --application-name DemoApp --ignore-hidden-files --s3-location s3://sams-codedeploy/newDemoRevision.zip --source .
# aws deploy create-deployment --application-name DemoApp --s3-location bucket=sams-codedeploy,key=newDemoRevision.zip,bundleType=zip,eTag=c050dcd19965793a3e25f861049a54de --deployment-group-name DemoAppWebTier --deployment-config-name <deployment-config-name> --description "Test Deployment"

# To Create Deployment Configuration
# aws deploy create-deployment-config --deployment-config-name 10Percent --minimum-healthy-hosts value=10,type=FLEET_PERCENT
# aws deploy create-deployment-config --deployment-config-name 7Hosts --minimum-healthy-hosts value=7,type=HOST_COUNT
