tar cvf demoRevision.tar *
aws s3 cp demoRevision.tar s3://sams-codedeploy/
aws deploy register-application-revision --application-name DemoApp --github-location commitId=f9cc72e136cd030450932d8fd6ace318bcd2d656,repository=anishsam/github-codedeploy

