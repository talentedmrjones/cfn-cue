package mesouth1

ResourceTypes: ApiGateway.Account | ApiGateway.ApiKey | ApiGateway.Authorizer | ApiGateway.BasePathMapping | ApiGateway.ClientCertificate | ApiGateway.Deployment | ApiGateway.DocumentationPart | ApiGateway.DocumentationVersion | ApiGateway.DomainName | ApiGateway.GatewayResponse | ApiGateway.Method | ApiGateway.Model | ApiGateway.RequestValidator | ApiGateway.Resource | ApiGateway.RestApi | ApiGateway.Stage | ApiGateway.UsagePlan | ApiGateway.UsagePlanKey | ApplicationAutoScaling.ScalableTarget | ApplicationAutoScaling.ScalingPolicy | AutoScaling.AutoScalingGroup | AutoScaling.LaunchConfiguration | AutoScaling.LifecycleHook | AutoScaling.ScalingPolicy | AutoScaling.ScheduledAction | Batch.ComputeEnvironment | CDK.Metadata | CertificateManager.Certificate | CloudFormation.CustomResource | CloudFormation.Macro | CloudFormation.Stack | CloudFormation.WaitCondition | CloudFormation.WaitConditionHandle | CloudFront.CloudFrontOriginAccessIdentity | CloudFront.Distribution | CloudFront.StreamingDistribution | CloudTrail.Trail | CloudWatch.Alarm | CloudWatch.AnomalyDetector | CloudWatch.Dashboard | CodeBuild.Project | CodeBuild.SourceCredential | CodeCommit.Repository | CodeDeploy.Application | CodeDeploy.DeploymentConfig | CodeDeploy.DeploymentGroup | Config.ConfigRule | Config.ConfigurationRecorder | Config.DeliveryChannel | DMS.Certificate | DMS.Endpoint | DMS.EventSubscription | DMS.ReplicationInstance | DMS.ReplicationSubnetGroup | DMS.ReplicationTask | DynamoDB.Table | EC2.CustomerGateway | EC2.DHCPOptions | EC2.EC2Fleet | EC2.EIP | EC2.EIPAssociation | EC2.EgressOnlyInternetGateway | EC2.FlowLog | EC2.Host | EC2.Instance | EC2.InternetGateway | EC2.NatGateway | EC2.NetworkAcl | EC2.NetworkAclEntry | EC2.NetworkInterface | EC2.NetworkInterfaceAttachment | EC2.NetworkInterfacePermission | EC2.PlacementGroup | EC2.Route | EC2.RouteTable | EC2.SecurityGroup | EC2.SecurityGroupEgress | EC2.SecurityGroupIngress | EC2.SpotFleet | EC2.Subnet | EC2.SubnetCidrBlock | EC2.SubnetNetworkAclAssociation | EC2.SubnetRouteTableAssociation | EC2.VPC | EC2.VPCCidrBlock | EC2.VPCDHCPOptionsAssociation | EC2.VPCEndpoint | EC2.VPCEndpointService | EC2.VPCEndpointServicePermissions | EC2.VPCGatewayAttachment | EC2.VPCPeeringConnection | EC2.VPNConnection | EC2.VPNConnectionRoute | EC2.VPNGateway | EC2.VPNGatewayRoutePropagation | EC2.Volume | EC2.VolumeAttachment | ECR.Repository | ECS.Cluster | ECS.Service | ECS.TaskDefinition | EKS.Cluster | EMR.Cluster | EMR.InstanceFleetConfig | EMR.InstanceGroupConfig | EMR.SecurityConfiguration | EMR.Step | ElastiCache.CacheCluster | ElastiCache.ParameterGroup | ElastiCache.ReplicationGroup | ElastiCache.SecurityGroup | ElastiCache.SecurityGroupIngress | ElastiCache.SubnetGroup | ElasticBeanstalk.Application | ElasticBeanstalk.ApplicationVersion | ElasticBeanstalk.ConfigurationTemplate | ElasticBeanstalk.Environment | ElasticLoadBalancing.LoadBalancer | ElasticLoadBalancingV2.Listener | ElasticLoadBalancingV2.ListenerCertificate | ElasticLoadBalancingV2.ListenerRule | ElasticLoadBalancingV2.LoadBalancer | ElasticLoadBalancingV2.TargetGroup | Elasticsearch.Domain | Events.Rule | Glue.Classifier | Glue.Connection | Glue.Crawler | Glue.DataCatalogEncryptionSettings | Glue.Database | Glue.DevEndpoint | Glue.Job | Glue.MLTransform | Glue.Partition | Glue.SecurityConfiguration | Glue.Table | Glue.Trigger | Glue.Workflow | GuardDuty.Detector | GuardDuty.Filter | GuardDuty.IPSet | GuardDuty.Master | GuardDuty.Member | GuardDuty.ThreatIntelSet | IAM.AccessKey | IAM.Group | IAM.InstanceProfile | IAM.ManagedPolicy | IAM.Policy | IAM.Role | IAM.User | IAM.UserToGroupAddition | IoT.Certificate | IoT.Policy | IoT.PolicyPrincipalAttachment | IoT.Thing | IoT.ThingPrincipalAttachment | IoT.TopicRule | KMS.Alias | KMS.Key | Kinesis.Stream | Lambda.Alias | Lambda.EventSourceMapping | Lambda.Function | Lambda.Permission | Lambda.Version | Logs.Destination | Logs.LogGroup | Logs.LogStream | Logs.MetricFilter | Logs.SubscriptionFilter | Neptune.DBCluster | Neptune.DBClusterParameterGroup | Neptune.DBInstance | Neptune.DBParameterGroup | Neptune.DBSubnetGroup | RDS.DBCluster | RDS.DBClusterParameterGroup | RDS.DBInstance | RDS.DBParameterGroup | RDS.DBSecurityGroup | RDS.DBSecurityGroupIngress | RDS.DBSubnetGroup | RDS.EventSubscription | RDS.OptionGroup | Redshift.Cluster | Redshift.ClusterParameterGroup | Redshift.ClusterSecurityGroup | Redshift.ClusterSecurityGroupIngress | Redshift.ClusterSubnetGroup | Route53.HealthCheck | Route53.HostedZone | Route53.RecordSet | Route53.RecordSetGroup | S3.Bucket | S3.BucketPolicy | SNS.Subscription | SNS.Topic | SNS.TopicPolicy | SQS.Queue | SQS.QueuePolicy | SSM.Association | SSM.Document | SSM.MaintenanceWindowTarget | SageMaker.CodeRepository | SageMaker.Endpoint | SageMaker.EndpointConfig | SageMaker.Model | SageMaker.NotebookInstance | SageMaker.NotebookInstanceLifecycleConfig | SageMaker.Workteam | SecretsManager.ResourcePolicy | SecretsManager.RotationSchedule | SecretsManager.Secret | SecretsManager.SecretTargetAttachment | SecurityHub.Hub | ServiceDiscovery.HttpNamespace | ServiceDiscovery.Instance | ServiceDiscovery.PrivateDnsNamespace | ServiceDiscovery.PublicDnsNamespace | ServiceDiscovery.Service | StepFunctions.Activity | StepFunctions.StateMachine | WAF.ByteMatchSet | WAF.IPSet | WAF.Rule | WAF.SizeConstraintSet | WAF.SqlInjectionMatchSet | WAF.WebACL | WAF.XssMatchSet
Template :: {
	AWSTemplateFormatVersion?: "2010-09-09"
	Description?:              string
	Metadata?: [string]: _
	Parameters?: [=~"[a-zA-Z0-9]"]: {
		Type:                   _
		AllowedPattern?:        string
		AllowedValues?:         string
		ConstraintDescription?: string
		Default?:               string
		Description?:           string
		MaxLength?:             int
		MaxValue?:              int
		MinLength?:             int
		MinValue?:              int
		NoEcho?:                bool
	}
	Resources: [=~"[a-zA-Z0-9]"]: ResourceTypes
	Outputs?: [=~"[a-zA-Z0-9]"]: {
		Description?: string
		Value:        _
		Export?: Name: _
	}
}
