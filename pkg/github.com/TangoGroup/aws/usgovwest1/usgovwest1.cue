package usgovwest1

import "github.com/TangoGroup/aws/fn"

ResourceSpecificationVersion :: "11.0.0"
Template :: {
	AWSTemplateFormatVersion?: "2010-09-09"
	Description?:              string
	Metadata?: [string]: _
	Mappings?: [string]: [string]: [=~"[a-zA-Z0-9]"]: string | int | bool | [...(string | int | bool)]
	Conditions?: [string]: fn.And | fn.Equals | fn.If | fn.Not | fn.Or
	Parameters?: [=~"[a-zA-Z0-9]"]: {
		Type:                   "AWS::EC2::AvailabilityZone::Name" | "AWS::EC2::Image::Id" | "AWS::EC2::Instance::Id" | "AWS::EC2::KeyPair::KeyName" | "AWS::EC2::SecurityGroup::GroupName" | "AWS::EC2::SecurityGroup::Id" | "AWS::EC2::Subnet::Id" | "AWS::EC2::VPC::Id" | "AWS::EC2::Volume::Id" | "AWS::Route53::HostedZone::Id" | "AWS::SSM::Parameter::Name" | "AWS::SSM::Parameter::Value<AWS::EC2::AvailabilityZone::Name>" | "AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Instance::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::KeyPair::KeyName>" | "AWS::SSM::Parameter::Value<AWS::EC2::SecurityGroup::GroupName>" | "AWS::SSM::Parameter::Value<AWS::EC2::SecurityGroup::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Subnet::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::VPC::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Volume::Id>" | "AWS::SSM::Parameter::Value<AWS::Route53::HostedZone::Id>" | "AWS::SSM::Parameter::Value<CommaDelimitedList>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::AvailabilityZone::Name>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Image::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Instance::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::KeyPair::KeyName>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::SecurityGroup::GroupName>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::SecurityGroup::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Subnet::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::VPC::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Volume::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::Route53::HostedZone::Id>>" | "AWS::SSM::Parameter::Value<List<String>>" | "AWS::SSM::Parameter::Value<String>" | "CommaDelimitedList" | "List<AWS::EC2::AvailabilityZone::Name>" | "List<AWS::EC2::Image::Id>" | "List<AWS::EC2::Instance::Id>" | "List<AWS::EC2::SecurityGroup::GroupName>" | "List<AWS::EC2::SecurityGroup::Id>" | "List<AWS::EC2::Subnet::Id>" | "List<AWS::EC2::VPC::Id>" | "List<AWS::EC2::Volume::Id>" | "List<AWS::Route53::HostedZone::Id>" | "List<Number>" | "Number" | "String"
		AllowedPattern?:        string
		AllowedValues?:         [...(string | number | bool)]
		ConstraintDescription?: string
		Default?:               string | number | bool
		Description?:           string
		MaxLength?:             int | =~"^[0-9]+$"
		MaxValue?:              int | =~"^[0-9]+$"
		MinLength?:             int | =~"^[0-9]+$"
		MinValue?:              int | =~"^[0-9]+$"
		NoEcho?:                bool | =~"^(true|false)$"
	}
	Resources: [=~"[a-zA-Z0-9]"]: {
		Description?: string
		Type:         "AWS::ApiGateway::Account" | "AWS::ApiGateway::ApiKey" | "AWS::ApiGateway::Authorizer" | "AWS::ApiGateway::BasePathMapping" | "AWS::ApiGateway::ClientCertificate" | "AWS::ApiGateway::Deployment" | "AWS::ApiGateway::DocumentationPart" | "AWS::ApiGateway::DocumentationVersion" | "AWS::ApiGateway::DomainName" | "AWS::ApiGateway::GatewayResponse" | "AWS::ApiGateway::Method" | "AWS::ApiGateway::Model" | "AWS::ApiGateway::RequestValidator" | "AWS::ApiGateway::Resource" | "AWS::ApiGateway::RestApi" | "AWS::ApiGateway::Stage" | "AWS::ApiGateway::UsagePlan" | "AWS::ApiGateway::UsagePlanKey" | "AWS::ApiGateway::VpcLink" | "AWS::ApiGatewayV2::Api" | "AWS::ApiGatewayV2::ApiMapping" | "AWS::ApiGatewayV2::Authorizer" | "AWS::ApiGatewayV2::Deployment" | "AWS::ApiGatewayV2::DomainName" | "AWS::ApiGatewayV2::Integration" | "AWS::ApiGatewayV2::IntegrationResponse" | "AWS::ApiGatewayV2::Model" | "AWS::ApiGatewayV2::Route" | "AWS::ApiGatewayV2::RouteResponse" | "AWS::ApiGatewayV2::Stage" | "AWS::AppStream::DirectoryConfig" | "AWS::AppStream::Fleet" | "AWS::AppStream::ImageBuilder" | "AWS::AppStream::Stack" | "AWS::AppStream::StackFleetAssociation" | "AWS::ApplicationAutoScaling::ScalableTarget" | "AWS::ApplicationAutoScaling::ScalingPolicy" | "AWS::Athena::NamedQuery" | "AWS::AutoScaling::AutoScalingGroup" | "AWS::AutoScaling::LaunchConfiguration" | "AWS::AutoScaling::LifecycleHook" | "AWS::AutoScaling::ScalingPolicy" | "AWS::AutoScaling::ScheduledAction" | "AWS::Batch::ComputeEnvironment" | "AWS::Batch::JobDefinition" | "AWS::Batch::JobQueue" | "AWS::CDK::Metadata" | "AWS::CertificateManager::Certificate" | "AWS::CloudFormation::CustomResource" | "AWS::CloudFormation::Macro" | "AWS::CloudFormation::Stack" | "AWS::CloudFormation::WaitCondition" | "AWS::CloudFormation::WaitConditionHandle" | "AWS::CloudTrail::Trail" | "AWS::CloudWatch::Alarm" | "AWS::CloudWatch::AnomalyDetector" | "AWS::CloudWatch::Dashboard" | "AWS::CloudWatch::InsightRule" | "AWS::CodeBuild::Project" | "AWS::CodeCommit::Repository" | "AWS::CodeDeploy::Application" | "AWS::CodeDeploy::DeploymentConfig" | "AWS::CodeDeploy::DeploymentGroup" | "AWS::Config::ConfigRule" | "AWS::Config::ConfigurationRecorder" | "AWS::Config::DeliveryChannel" | "AWS::Config::RemediationConfiguration" | "AWS::DMS::Certificate" | "AWS::DMS::Endpoint" | "AWS::DMS::EventSubscription" | "AWS::DMS::ReplicationInstance" | "AWS::DMS::ReplicationSubnetGroup" | "AWS::DMS::ReplicationTask" | "AWS::DirectoryService::MicrosoftAD" | "AWS::DirectoryService::SimpleAD" | "AWS::DynamoDB::Table" | "AWS::EC2::CustomerGateway" | "AWS::EC2::DHCPOptions" | "AWS::EC2::EC2Fleet" | "AWS::EC2::EIP" | "AWS::EC2::EIPAssociation" | "AWS::EC2::EgressOnlyInternetGateway" | "AWS::EC2::FlowLog" | "AWS::EC2::Host" | "AWS::EC2::Instance" | "AWS::EC2::InternetGateway" | "AWS::EC2::LaunchTemplate" | "AWS::EC2::NatGateway" | "AWS::EC2::NetworkAcl" | "AWS::EC2::NetworkAclEntry" | "AWS::EC2::NetworkInterface" | "AWS::EC2::NetworkInterfaceAttachment" | "AWS::EC2::NetworkInterfacePermission" | "AWS::EC2::PlacementGroup" | "AWS::EC2::Route" | "AWS::EC2::RouteTable" | "AWS::EC2::SecurityGroup" | "AWS::EC2::SecurityGroupEgress" | "AWS::EC2::SecurityGroupIngress" | "AWS::EC2::SpotFleet" | "AWS::EC2::Subnet" | "AWS::EC2::SubnetCidrBlock" | "AWS::EC2::SubnetNetworkAclAssociation" | "AWS::EC2::SubnetRouteTableAssociation" | "AWS::EC2::TrafficMirrorFilter" | "AWS::EC2::TrafficMirrorFilterRule" | "AWS::EC2::TrafficMirrorSession" | "AWS::EC2::TrafficMirrorTarget" | "AWS::EC2::TransitGateway" | "AWS::EC2::TransitGatewayAttachment" | "AWS::EC2::TransitGatewayRoute" | "AWS::EC2::TransitGatewayRouteTable" | "AWS::EC2::TransitGatewayRouteTableAssociation" | "AWS::EC2::TransitGatewayRouteTablePropagation" | "AWS::EC2::VPC" | "AWS::EC2::VPCCidrBlock" | "AWS::EC2::VPCDHCPOptionsAssociation" | "AWS::EC2::VPCEndpoint" | "AWS::EC2::VPCEndpointService" | "AWS::EC2::VPCGatewayAttachment" | "AWS::EC2::VPCPeeringConnection" | "AWS::EC2::VPNConnection" | "AWS::EC2::VPNConnectionRoute" | "AWS::EC2::VPNGateway" | "AWS::EC2::VPNGatewayRoutePropagation" | "AWS::EC2::Volume" | "AWS::EC2::VolumeAttachment" | "AWS::ECR::Repository" | "AWS::ECS::Cluster" | "AWS::ECS::Service" | "AWS::ECS::TaskDefinition" | "AWS::EFS::FileSystem" | "AWS::EFS::MountTarget" | "AWS::EMR::Cluster" | "AWS::EMR::InstanceFleetConfig" | "AWS::EMR::InstanceGroupConfig" | "AWS::EMR::SecurityConfiguration" | "AWS::EMR::Step" | "AWS::ElastiCache::CacheCluster" | "AWS::ElastiCache::ParameterGroup" | "AWS::ElastiCache::ReplicationGroup" | "AWS::ElastiCache::SecurityGroup" | "AWS::ElastiCache::SecurityGroupIngress" | "AWS::ElastiCache::SubnetGroup" | "AWS::ElasticBeanstalk::Application" | "AWS::ElasticBeanstalk::ApplicationVersion" | "AWS::ElasticBeanstalk::ConfigurationTemplate" | "AWS::ElasticBeanstalk::Environment" | "AWS::ElasticLoadBalancing::LoadBalancer" | "AWS::ElasticLoadBalancingV2::Listener" | "AWS::ElasticLoadBalancingV2::ListenerCertificate" | "AWS::ElasticLoadBalancingV2::ListenerRule" | "AWS::ElasticLoadBalancingV2::LoadBalancer" | "AWS::ElasticLoadBalancingV2::TargetGroup" | "AWS::Elasticsearch::Domain" | "AWS::Events::EventBusPolicy" | "AWS::Events::Rule" | "AWS::Glue::Classifier" | "AWS::Glue::Connection" | "AWS::Glue::Crawler" | "AWS::Glue::DataCatalogEncryptionSettings" | "AWS::Glue::Database" | "AWS::Glue::DevEndpoint" | "AWS::Glue::Job" | "AWS::Glue::MLTransform" | "AWS::Glue::Partition" | "AWS::Glue::SecurityConfiguration" | "AWS::Glue::Table" | "AWS::Glue::Trigger" | "AWS::Glue::Workflow" | "AWS::Greengrass::ConnectorDefinition" | "AWS::Greengrass::ConnectorDefinitionVersion" | "AWS::Greengrass::CoreDefinition" | "AWS::Greengrass::CoreDefinitionVersion" | "AWS::Greengrass::DeviceDefinition" | "AWS::Greengrass::DeviceDefinitionVersion" | "AWS::Greengrass::FunctionDefinition" | "AWS::Greengrass::FunctionDefinitionVersion" | "AWS::Greengrass::Group" | "AWS::Greengrass::GroupVersion" | "AWS::Greengrass::LoggerDefinition" | "AWS::Greengrass::LoggerDefinitionVersion" | "AWS::Greengrass::ResourceDefinition" | "AWS::Greengrass::ResourceDefinitionVersion" | "AWS::Greengrass::SubscriptionDefinition" | "AWS::Greengrass::SubscriptionDefinitionVersion" | "AWS::GuardDuty::Detector" | "AWS::GuardDuty::Filter" | "AWS::GuardDuty::IPSet" | "AWS::GuardDuty::Master" | "AWS::GuardDuty::Member" | "AWS::GuardDuty::ThreatIntelSet" | "AWS::IAM::AccessKey" | "AWS::IAM::Group" | "AWS::IAM::InstanceProfile" | "AWS::IAM::ManagedPolicy" | "AWS::IAM::Policy" | "AWS::IAM::Role" | "AWS::IAM::User" | "AWS::IAM::UserToGroupAddition" | "AWS::Inspector::AssessmentTarget" | "AWS::Inspector::AssessmentTemplate" | "AWS::Inspector::ResourceGroup" | "AWS::IoT::Certificate" | "AWS::IoT::Policy" | "AWS::IoT::PolicyPrincipalAttachment" | "AWS::IoT::Thing" | "AWS::IoT::ThingPrincipalAttachment" | "AWS::IoT::TopicRule" | "AWS::KMS::Alias" | "AWS::KMS::Key" | "AWS::Kinesis::Stream" | "AWS::Kinesis::StreamConsumer" | "AWS::KinesisFirehose::DeliveryStream" | "AWS::Lambda::Alias" | "AWS::Lambda::EventInvokeConfig" | "AWS::Lambda::EventSourceMapping" | "AWS::Lambda::Function" | "AWS::Lambda::LayerVersion" | "AWS::Lambda::LayerVersionPermission" | "AWS::Lambda::Permission" | "AWS::Lambda::Version" | "AWS::Logs::Destination" | "AWS::Logs::LogGroup" | "AWS::Logs::LogStream" | "AWS::Logs::MetricFilter" | "AWS::Logs::SubscriptionFilter" | "AWS::Neptune::DBCluster" | "AWS::Neptune::DBClusterParameterGroup" | "AWS::Neptune::DBInstance" | "AWS::Neptune::DBParameterGroup" | "AWS::Neptune::DBSubnetGroup" | "AWS::RAM::ResourceShare" | "AWS::RDS::DBCluster" | "AWS::RDS::DBClusterParameterGroup" | "AWS::RDS::DBInstance" | "AWS::RDS::DBParameterGroup" | "AWS::RDS::DBSecurityGroup" | "AWS::RDS::DBSecurityGroupIngress" | "AWS::RDS::DBSubnetGroup" | "AWS::RDS::EventSubscription" | "AWS::RDS::OptionGroup" | "AWS::Redshift::Cluster" | "AWS::Redshift::ClusterParameterGroup" | "AWS::Redshift::ClusterSecurityGroup" | "AWS::Redshift::ClusterSecurityGroupIngress" | "AWS::Redshift::ClusterSubnetGroup" | "AWS::Route53Resolver::ResolverEndpoint" | "AWS::Route53Resolver::ResolverRule" | "AWS::Route53Resolver::ResolverRuleAssociation" | "AWS::S3::Bucket" | "AWS::S3::BucketPolicy" | "AWS::SNS::Subscription" | "AWS::SNS::Topic" | "AWS::SNS::TopicPolicy" | "AWS::SQS::Queue" | "AWS::SQS::QueuePolicy" | "AWS::SSM::Association" | "AWS::SSM::Document" | "AWS::SSM::MaintenanceWindow" | "AWS::SSM::MaintenanceWindowTarget" | "AWS::SSM::ResourceDataSync" | "AWS::SageMaker::NotebookInstance" | "AWS::SecretsManager::ResourcePolicy" | "AWS::SecretsManager::RotationSchedule" | "AWS::SecretsManager::Secret" | "AWS::SecretsManager::SecretTargetAttachment" | "AWS::ServiceCatalog::AcceptedPortfolioShare" | "AWS::ServiceCatalog::CloudFormationProduct" | "AWS::ServiceCatalog::CloudFormationProvisionedProduct" | "AWS::ServiceCatalog::LaunchNotificationConstraint" | "AWS::ServiceCatalog::LaunchRoleConstraint" | "AWS::ServiceCatalog::LaunchTemplateConstraint" | "AWS::ServiceCatalog::Portfolio" | "AWS::ServiceCatalog::PortfolioPrincipalAssociation" | "AWS::ServiceCatalog::PortfolioProductAssociation" | "AWS::ServiceCatalog::PortfolioShare" | "AWS::ServiceCatalog::ResourceUpdateConstraint" | "AWS::ServiceCatalog::StackSetConstraint" | "AWS::ServiceCatalog::TagOption" | "AWS::ServiceCatalog::TagOptionAssociation" | "AWS::StepFunctions::Activity" | "AWS::StepFunctions::StateMachine" | "AWS::WAF::ByteMatchSet" | "AWS::WAF::IPSet" | "AWS::WAF::Rule" | "AWS::WAF::SizeConstraintSet" | "AWS::WAF::SqlInjectionMatchSet" | "AWS::WAF::WebACL" | "AWS::WAF::XssMatchSet" | "AWS::WAFRegional::ByteMatchSet" | "AWS::WAFRegional::GeoMatchSet" | "AWS::WAFRegional::IPSet" | "AWS::WAFRegional::RateBasedRule" | "AWS::WAFRegional::RegexPatternSet" | "AWS::WAFRegional::Rule" | "AWS::WAFRegional::SizeConstraintSet" | "AWS::WAFRegional::SqlInjectionMatchSet" | "AWS::WAFRegional::WebACL" | "AWS::WAFRegional::WebACLAssociation" | "AWS::WAFRegional::XssMatchSet" | "AWS::WorkSpaces::Workspace" | =~#"^Custom::[a-zA-Z0-9_@-]{1,60}$"#
		Properties: [string]: _
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain" | "Snapshot"
		UpdateReplacePolicy?: "Delete" | "Retain" | "Snapshot"
		CreationPolicy?:      _
		UpdatePolicy?:        _
		Metadata?: [string]: _
		Condition?: string
	}
	Outputs?: [=~"[a-zA-Z0-9]"]: {
		Description?: string
		Value:        _
		Condition?:   string
		Export?: Name: _
	}
}
