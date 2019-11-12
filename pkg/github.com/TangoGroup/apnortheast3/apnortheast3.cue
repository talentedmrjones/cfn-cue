package apnortheast3

ResourceTypes: ApiGateway.Account | ApiGateway.ApiKey | ApiGateway.Authorizer | ApiGateway.BasePathMapping | ApiGateway.ClientCertificate | ApiGateway.Deployment | ApiGateway.DocumentationPart | ApiGateway.DocumentationVersion | ApiGateway.DomainName | ApiGateway.GatewayResponse | ApiGateway.Method | ApiGateway.Model | ApiGateway.RequestValidator | ApiGateway.Resource | ApiGateway.RestApi | ApiGateway.Stage | ApiGateway.UsagePlan | ApiGateway.UsagePlanKey | ApplicationAutoScaling.ScalableTarget | ApplicationAutoScaling.ScalingPolicy | AutoScaling.AutoScalingGroup | AutoScaling.LaunchConfiguration | AutoScaling.LifecycleHook | AutoScaling.ScalingPolicy | AutoScaling.ScheduledAction | CDK.Metadata | CertificateManager.Certificate | CloudFormation.CustomResource | CloudFormation.Macro | CloudFormation.Stack | CloudFormation.WaitCondition | CloudFormation.WaitConditionHandle | CloudTrail.Trail | CloudWatch.Alarm | CloudWatch.AnomalyDetector | CloudWatch.Dashboard | CodeDeploy.Application | CodeDeploy.DeploymentConfig | CodeDeploy.DeploymentGroup | CodePipeline.CustomActionType | CodePipeline.Pipeline | Config.ConfigRule | Config.ConfigurationRecorder | Config.DeliveryChannel | DataPipeline.Pipeline | DirectoryService.MicrosoftAD | DirectoryService.SimpleAD | DynamoDB.Table | EC2.CustomerGateway | EC2.DHCPOptions | EC2.EC2Fleet | EC2.EIP | EC2.EIPAssociation | EC2.EgressOnlyInternetGateway | EC2.FlowLog | EC2.Host | EC2.Instance | EC2.InternetGateway | EC2.LaunchTemplate | EC2.NatGateway | EC2.NetworkAcl | EC2.NetworkAclEntry | EC2.NetworkInterface | EC2.NetworkInterfaceAttachment | EC2.NetworkInterfacePermission | EC2.PlacementGroup | EC2.Route | EC2.RouteTable | EC2.SecurityGroup | EC2.SecurityGroupEgress | EC2.SecurityGroupIngress | EC2.SpotFleet | EC2.Subnet | EC2.SubnetCidrBlock | EC2.SubnetNetworkAclAssociation | EC2.SubnetRouteTableAssociation | EC2.VPC | EC2.VPCCidrBlock | EC2.VPCDHCPOptionsAssociation | EC2.VPCEndpoint | EC2.VPCEndpointConnectionNotification | EC2.VPCEndpointService | EC2.VPCEndpointServicePermissions | EC2.VPCGatewayAttachment | EC2.VPCPeeringConnection | EC2.VPNConnection | EC2.VPNConnectionRoute | EC2.VPNGateway | EC2.VPNGatewayRoutePropagation | EC2.Volume | EC2.VolumeAttachment | ECR.Repository | ECS.Cluster | ECS.Service | ECS.TaskDefinition | EFS.FileSystem | EFS.MountTarget | EMR.Cluster | EMR.InstanceFleetConfig | EMR.InstanceGroupConfig | EMR.SecurityConfiguration | EMR.Step | ElastiCache.CacheCluster | ElastiCache.ParameterGroup | ElastiCache.ReplicationGroup | ElastiCache.SecurityGroup | ElastiCache.SecurityGroupIngress | ElastiCache.SubnetGroup | ElasticBeanstalk.Application | ElasticBeanstalk.ApplicationVersion | ElasticBeanstalk.ConfigurationTemplate | ElasticBeanstalk.Environment | ElasticLoadBalancing.LoadBalancer | ElasticLoadBalancingV2.Listener | ElasticLoadBalancingV2.ListenerCertificate | ElasticLoadBalancingV2.ListenerRule | ElasticLoadBalancingV2.LoadBalancer | ElasticLoadBalancingV2.TargetGroup | Elasticsearch.Domain | Events.Rule | GameLift.Alias | GameLift.Build | GameLift.Fleet | IAM.AccessKey | IAM.Group | IAM.InstanceProfile | IAM.ManagedPolicy | IAM.Policy | IAM.Role | IAM.User | IAM.UserToGroupAddition | IoT.Certificate | IoT.Policy | IoT.PolicyPrincipalAttachment | IoT.Thing | IoT.ThingPrincipalAttachment | IoT.TopicRule | KMS.Alias | KMS.Key | Kinesis.Stream | Kinesis.StreamConsumer | KinesisFirehose.DeliveryStream | Lambda.Alias | Lambda.EventSourceMapping | Lambda.Function | Lambda.Permission | Lambda.Version | Logs.Destination | Logs.LogGroup | Logs.LogStream | Logs.MetricFilter | Logs.SubscriptionFilter | OpsWorks.App | OpsWorks.ElasticLoadBalancerAttachment | OpsWorks.Instance | OpsWorks.Layer | OpsWorks.Stack | OpsWorks.UserProfile | OpsWorks.Volume | RDS.DBCluster | RDS.DBClusterParameterGroup | RDS.DBInstance | RDS.DBParameterGroup | RDS.DBSecurityGroup | RDS.DBSecurityGroupIngress | RDS.DBSubnetGroup | RDS.EventSubscription | RDS.OptionGroup | Redshift.Cluster | Redshift.ClusterParameterGroup | Redshift.ClusterSecurityGroup | Redshift.ClusterSecurityGroupIngress | Redshift.ClusterSubnetGroup | Route53.HealthCheck | Route53.HostedZone | Route53.RecordSet | Route53.RecordSetGroup | S3.Bucket | S3.BucketPolicy | SDB.Domain | SNS.Subscription | SNS.Topic | SNS.TopicPolicy | SQS.Queue | SQS.QueuePolicy | SSM.Association | SSM.Document | SSM.MaintenanceWindowTarget | WAF.ByteMatchSet | WAF.IPSet | WAF.Rule | WAF.SizeConstraintSet | WAF.SqlInjectionMatchSet | WAF.WebACL | WAF.XssMatchSet | WorkSpaces.Workspace
Template :: {
	AWSTemplateFormatVersion?: "2010-09-09"
	Description?:              string
	Metadata?: [string]: _
	Parameters?: [=~"[a-zA-Z0-9]"]: {
		Type:                   "AWS::EC2::AvailabilityZone::Name" | "AWS::EC2::Image::Id" | "AWS::EC2::Instance::Id" | "AWS::EC2::KeyPair::KeyName" | "AWS::EC2::SecurityGroup::GroupName" | "AWS::EC2::SecurityGroup::Id" | "AWS::EC2::Subnet::Id" | "AWS::EC2::VPC::Id" | "AWS::EC2::Volume::Id" | "AWS::Route53::HostedZone::Id" | "AWS::SSM::Parameter::Name" | "AWS::SSM::Parameter::Value<AWS::EC2::AvailabilityZone::Name>" | "AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Instance::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::KeyPair::KeyName>" | "AWS::SSM::Parameter::Value<AWS::EC2::SecurityGroup::GroupName>" | "AWS::SSM::Parameter::Value<AWS::EC2::SecurityGroup::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Subnet::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::VPC::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Volume::Id>" | "AWS::SSM::Parameter::Value<AWS::Route53::HostedZone::Id>" | "AWS::SSM::Parameter::Value<CommaDelimitedList>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::AvailabilityZone::Name>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Image::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Instance::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::KeyPair::KeyName>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::SecurityGroup::GroupName>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::SecurityGroup::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Subnet::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::VPC::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Volume::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::Route53::HostedZone::Id>>" | "AWS::SSM::Parameter::Value<List<String>>" | "AWS::SSM::Parameter::Value<String>" | "CommaDelimitedList" | "List<AWS::EC2::AvailabilityZone::Name>" | "List<AWS::EC2::Image::Id>" | "List<AWS::EC2::Instance::Id>" | "List<AWS::EC2::SecurityGroup::GroupName>" | "List<AWS::EC2::SecurityGroup::Id>" | "List<AWS::EC2::Subnet::Id>" | "List<AWS::EC2::VPC::Id>" | "List<AWS::EC2::Volume::Id>" | "List<AWS::Route53::HostedZone::Id>" | "List<Number>" | "Number" | "String"
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
