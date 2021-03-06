package apnortheast3

import "github.com/TangoGroup/aws/fn"

EKS :: {
	Cluster :: {
		Type: "AWS::EKS::Cluster"
		Properties: {
			Name?: string | fn.Fn
			ResourcesVpcConfig: {
				SecurityGroupIds?: [...(string | fn.Fn)] | (string | fn.Fn)
				SubnetIds:         [...(string | fn.Fn)] | (string | fn.Fn)
			}
			RoleArn:  string | fn.Fn
			Version?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Nodegroup :: {
		Type: "AWS::EKS::Nodegroup"
		Properties: {
			AmiType?:            string | fn.Fn
			ClusterName:         string | fn.Fn
			DiskSize?:           number | fn.Fn
			ForceUpdateEnabled?: bool | fn.Fn
			InstanceTypes?:      [...(string | fn.Fn)] | (string | fn.Fn)
			Labels?:             {
				[string]: _
			} | fn.Fn
			NodeRole:        string | fn.Fn
			NodegroupName?:  string | fn.Fn
			ReleaseVersion?: string | fn.Fn
			RemoteAccess?: {
				Ec2SshKey:             string | fn.Fn
				SourceSecurityGroups?: [...(string | fn.Fn)] | (string | fn.Fn)
			}
			ScalingConfig?: {
				DesiredSize?: number | fn.Fn
				MaxSize?:     number | fn.Fn
				MinSize?:     number | fn.Fn
			}
			Subnets: [...(string | fn.Fn)] | (string | fn.Fn)
			Tags?:   {
				[string]: _
			} | fn.Fn
			Version?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
