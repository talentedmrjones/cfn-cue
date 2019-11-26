package apnortheast3

import "github.com/TangoGroup/aws/fn"

SSM :: {
	Association :: {
		Type: "AWS::SSM::Association"
		Properties: {
			AssociationName?: string | fn.Fn
			DocumentVersion?: string | fn.Fn
			InstanceId?:      string | fn.Fn
			Name:             string | fn.Fn
			OutputLocation?: S3Location?: {
				OutputS3BucketName?: string | fn.Fn
				OutputS3KeyPrefix?:  string | fn.Fn
			}
			Parameters?: [string]: ParameterValues: [...(string | fn.Fn)]
			ScheduleExpression?: string | fn.Fn
			Targets?: [...{
				Key: string | fn.Fn
				Values: [...(string | fn.Fn)]
			}]
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	Document :: {
		Type: "AWS::SSM::Document"
		Properties: {
			Content: {
				[string]: _
			} | fn.Fn
			DocumentType?: string | fn.Fn
			Tags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
}