package cnnorth1

import "github.com/TangoGroup/aws/fn"

ApiGatewayV2 :: {
	ApiMapping :: {
		Type:       "AWS::ApiGatewayV2::ApiMapping"
		Properties: close({
			ApiId:          string | fn.Fn
			ApiMappingKey?: string | fn.Fn
			DomainName:     string | fn.Fn
			Stage:          string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DomainName :: {
		Type:       "AWS::ApiGatewayV2::DomainName"
		Properties: close({
			DomainName:                string | fn.Fn
			DomainNameConfigurations?: [...close({
				CertificateArn?:  string | fn.Fn
				CertificateName?: string | fn.Fn
				EndpointType?:    string | fn.Fn
				SecurityPolicy?:  string | fn.Fn
			})] | fn.If
			MutualTlsAuthentication?: close({
				TruststoreUri?:     string | fn.Fn
				TruststoreVersion?: string | fn.Fn
			}) | fn.If
			Tags?: {
				[string]: _
			} | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
