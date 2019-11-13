package uswest2

import "github.com/TangoGroup/fn"

CloudFormation :: {
	CustomResource :: {
		Type: "AWS::CloudFormation::CustomResource"
		Properties: ServiceToken: string | fn.Fn
		DependsOn?: string | [...string]
	}
	Macro :: {
		Type: "AWS::CloudFormation::Macro"
		Properties: {
			Description?:  string | fn.Fn
			FunctionName:  string | fn.Fn
			LogGroupName?: string | fn.Fn
			LogRoleARN?:   string | fn.Fn
			Name:          string | fn.Fn
		}
		DependsOn?: string | [...string]
	}
	Stack :: {
		Type: "AWS::CloudFormation::Stack"
		Properties: {
			NotificationARNs?: [...(string | fn.Fn)]
			Parameters?: [string]: string | fn.Fn
			Tags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
			TemplateURL:       string | fn.Fn
			TimeoutInMinutes?: int | fn.Fn
		}
		DependsOn?: string | [...string]
	}
	WaitCondition :: {
		Type: "AWS::CloudFormation::WaitCondition"
		Properties: {
			Count?:   int | fn.Fn
			Handle?:  string | fn.Fn
			Timeout?: (string & (>=0 & <=43200)) | fn.Fn
		}
		DependsOn?: string | [...string]
	}
	WaitConditionHandle :: {
		Type: "AWS::CloudFormation::WaitConditionHandle"
		Properties: {
		}
		DependsOn?: string | [...string]
	}
}
