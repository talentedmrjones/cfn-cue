package useast2

import "github.com/TangoGroup/fn"

AppSync :: {
	ApiKey :: {
		Type: "AWS::AppSync::ApiKey"
		Properties: {
			ApiId:        string | fn.Fn
			Description?: string | fn.Fn
			Expires?:     float | fn.Fn
		}
	}
	DataSource :: {
		Type: "AWS::AppSync::DataSource"
		Properties: {
			ApiId:        string | fn.Fn
			Description?: string | fn.Fn
			DynamoDBConfig?: {
				AwsRegion: string | fn.Fn
				DeltaSyncConfig?: {
					BaseTableTTL:       string | fn.Fn
					DeltaSyncTableName: string | fn.Fn
					DeltaSyncTableTTL:  string | fn.Fn
				}
				TableName:             string | fn.Fn
				UseCallerCredentials?: bool | fn.Fn
				Versioned?:            bool | fn.Fn
			}
			ElasticsearchConfig?: {
				AwsRegion: string | fn.Fn
				Endpoint:  string | fn.Fn
			}
			HttpConfig?: {
				AuthorizationConfig?: {
					AuthorizationType: string | fn.Fn
					AwsIamConfig?: {
						SigningRegion?:      string | fn.Fn
						SigningServiceName?: string | fn.Fn
					}
				}
				Endpoint: string | fn.Fn
			}
			LambdaConfig?: LambdaFunctionArn: string | fn.Fn
			Name: string | fn.Fn
			RelationalDatabaseConfig?: {
				RdsHttpEndpointConfig?: {
					AwsRegion:           string | fn.Fn
					AwsSecretStoreArn:   string | fn.Fn
					DatabaseName?:       string | fn.Fn
					DbClusterIdentifier: string | fn.Fn
					Schema?:             string | fn.Fn
				}
				RelationalDatabaseSourceType: string | fn.Fn
			}
			ServiceRoleArn?: string | fn.Fn
			Type:            (string & ("AMAZON_DYNAMODB" | "AMAZON_ELASTICSEARCH" | "AWS_LAMBDA" | "HTTP" | "NONE" | "RELATIONAL_DATABASE")) | fn.Fn
		}
	}
	FunctionConfiguration :: {
		Type: "AWS::AppSync::FunctionConfiguration"
		Properties: {
			ApiId:                              string | fn.Fn
			DataSourceName:                     string | fn.Fn
			Description?:                       string | fn.Fn
			FunctionVersion:                    string | fn.Fn
			Name:                               string | fn.Fn
			RequestMappingTemplate?:            string | fn.Fn
			RequestMappingTemplateS3Location?:  string | fn.Fn
			ResponseMappingTemplate?:           string | fn.Fn
			ResponseMappingTemplateS3Location?: string | fn.Fn
		}
	}
	GraphQLApi :: {
		Type: "AWS::AppSync::GraphQLApi"
		Properties: {
			AdditionalAuthenticationProviders?: [...{
				AuthenticationType: string | fn.Fn
				OpenIDConnectConfig?: {
					AuthTTL?:  float | fn.Fn
					ClientId?: string | fn.Fn
					IatTTL?:   float | fn.Fn
					Issuer?:   string | fn.Fn
				}
				UserPoolConfig?: {
					AppIdClientRegex?: string | fn.Fn
					AwsRegion?:        string | fn.Fn
					UserPoolId?:       string | fn.Fn
				}
			}]
			AuthenticationType: (string & ("AMAZON_COGNITO_USER_POOLS" | "API_KEY" | "AWS_IAM" | "OPENID_CONNECT")) | fn.Fn
			LogConfig?: {
				CloudWatchLogsRoleArn?: string | fn.Fn
				ExcludeVerboseContent?: bool | fn.Fn
				FieldLogLevel?:         string | fn.Fn
			}
			Name: string | fn.Fn
			OpenIDConnectConfig?: {
				AuthTTL?:  float | fn.Fn
				ClientId?: string | fn.Fn
				IatTTL?:   float | fn.Fn
				Issuer?:   string | fn.Fn
			}
			Tags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
			UserPoolConfig?: {
				AppIdClientRegex?: string | fn.Fn
				AwsRegion?:        string | fn.Fn
				DefaultAction?:    string | fn.Fn
				UserPoolId?:       string | fn.Fn
			}
		}
	}
	GraphQLSchema :: {
		Type: "AWS::AppSync::GraphQLSchema"
		Properties: {
			ApiId:                 string | fn.Fn
			Definition?:           string | fn.Fn
			DefinitionS3Location?: string | fn.Fn
		}
	}
	Resolver :: {
		Type: "AWS::AppSync::Resolver"
		Properties: {
			ApiId:           string | fn.Fn
			DataSourceName?: string | fn.Fn
			FieldName:       string | fn.Fn
			Kind?:           (string & ("PIPELINE" | "UNIT")) | fn.Fn
			PipelineConfig?: Functions?: [...(string | fn.Fn)]
			RequestMappingTemplate?:            string | fn.Fn
			RequestMappingTemplateS3Location?:  string | fn.Fn
			ResponseMappingTemplate?:           string | fn.Fn
			ResponseMappingTemplateS3Location?: string | fn.Fn
			SyncConfig?: {
				ConflictDetection: string | fn.Fn
				ConflictHandler?:  string | fn.Fn
				LambdaConfig?: LambdaConflictHandlerARN?: string | fn.Fn
			}
			TypeName: string | fn.Fn
		}
	}
}