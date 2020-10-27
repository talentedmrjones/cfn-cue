package apsoutheast1

import "github.com/TangoGroup/aws/fn"

RDS :: {
	DBCluster :: {
		Type:       "AWS::RDS::DBCluster"
		Properties: close({
			AssociatedRoles?: [...close({
				FeatureName?: string | fn.Fn
				RoleArn:      string | fn.Fn
			})] | fn.If
			AvailabilityZones?:               [...(string | fn.Fn)] | (string | fn.Fn)
			BacktrackWindow?:                 int | fn.Fn
			BackupRetentionPeriod?:           (>=1 & <=35) | fn.Fn
			DBClusterIdentifier?:             string | fn.Fn
			DBClusterParameterGroupName?:     string | fn.Fn
			DBSubnetGroupName?:               string | fn.Fn
			DatabaseName?:                    string | fn.Fn
			DeletionProtection?:              bool | fn.Fn
			EnableCloudwatchLogsExports?:     [...(string | fn.Fn)] | (string | fn.Fn)
			EnableHttpEndpoint?:              bool | fn.Fn
			EnableIAMDatabaseAuthentication?: bool | fn.Fn
			Engine:                           string | fn.Fn
			EngineMode?:                      string | fn.Fn
			EngineVersion?:                   string | fn.Fn
			GlobalClusterIdentifier?:         string | fn.Fn
			KmsKeyId?:                        string | fn.Fn
			MasterUserPassword?:              string | fn.Fn
			MasterUsername?:                  string | fn.Fn
			Port?:                            int | fn.Fn
			PreferredBackupWindow?:           string | fn.Fn
			PreferredMaintenanceWindow?:      string | fn.Fn
			ReplicationSourceIdentifier?:     string | fn.Fn
			RestoreType?:                     string | fn.Fn
			ScalingConfiguration?:            close({
				AutoPause?:             bool | fn.Fn
				MaxCapacity?:           int | fn.Fn
				MinCapacity?:           int | fn.Fn
				SecondsUntilAutoPause?: int | fn.Fn
			}) | fn.If
			SnapshotIdentifier?:        string | fn.Fn
			SourceDBClusterIdentifier?: string | fn.Fn
			SourceRegion?:              string | fn.Fn
			StorageEncrypted?:          bool | fn.Fn
			Tags?:                      [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			UseLatestRestorableTime?: bool | fn.Fn
			VpcSecurityGroupIds?:     [...(string | fn.Fn)] | (string | fn.Fn)
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain" | "Snapshot"
		UpdateReplacePolicy?: "Delete" | "Retain" | "Snapshot"
		Metadata?: [string]: _
		Condition?: string
	}
	DBClusterParameterGroup :: {
		Type:       "AWS::RDS::DBClusterParameterGroup"
		Properties: close({
			Description: string | fn.Fn
			Family:      string | fn.Fn
			Parameters:  {
				[string]: _
			} | fn.Fn
			Tags?: [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DBInstance :: {
		Type:       "AWS::RDS::DBInstance"
		Properties: close({
			AllocatedStorage?:         string | fn.Fn
			AllowMajorVersionUpgrade?: bool | fn.Fn
			AssociatedRoles?:          [...close({
				FeatureName: string | fn.Fn
				RoleArn:     string | fn.Fn
			})] | fn.If
			AutoMinorVersionUpgrade?:            bool | fn.Fn
			AvailabilityZone?:                   string | fn.Fn
			BackupRetentionPeriod?:              (>=0 & <=35) | fn.Fn
			CACertificateIdentifier?:            string | fn.Fn
			CharacterSetName?:                   string | fn.Fn
			CopyTagsToSnapshot?:                 bool | fn.Fn
			DBClusterIdentifier?:                string | fn.Fn
			DBInstanceClass:                     string | fn.Fn
			DBInstanceIdentifier?:               string | fn.Fn
			DBName?:                             string | fn.Fn
			DBParameterGroupName?:               string | fn.Fn
			DBSecurityGroups?:                   [...(string | fn.Fn)] | (string | fn.Fn)
			DBSnapshotIdentifier?:               string | fn.Fn
			DBSubnetGroupName?:                  string | fn.Fn
			DeleteAutomatedBackups?:             bool | fn.Fn
			DeletionProtection?:                 bool | fn.Fn
			Domain?:                             string | fn.Fn
			DomainIAMRoleName?:                  string | fn.Fn
			EnableCloudwatchLogsExports?:        [...(string | fn.Fn)] | (string | fn.Fn)
			EnableIAMDatabaseAuthentication?:    bool | fn.Fn
			EnablePerformanceInsights?:          bool | fn.Fn
			Engine?:                             (=~#"(?i)^(aurora|aurora-mysql|aurora-postgresql|mariadb|mysql|oracle-ee|oracle-se2|oracle-se1|oracle-se|postgres|sqlserver-ee|sqlserver-se|sqlserver-ex|sqlserver-web)$"#) | fn.Fn
			EngineVersion?:                      string | fn.Fn
			Iops?:                               int | fn.Fn
			KmsKeyId?:                           string | fn.Fn
			LicenseModel?:                       string | fn.Fn
			MasterUserPassword?:                 string | fn.Fn
			MasterUsername?:                     string | fn.Fn
			MaxAllocatedStorage?:                int | fn.Fn
			MonitoringInterval?:                 (0 | 1 | 5 | 10 | 15 | 30 | 60) | fn.Fn
			MonitoringRoleArn?:                  string | fn.Fn
			MultiAZ?:                            bool | fn.Fn
			OptionGroupName?:                    string | fn.Fn
			PerformanceInsightsKMSKeyId?:        string | fn.Fn
			PerformanceInsightsRetentionPeriod?: (7 | 731) | fn.Fn
			Port?:                               string | fn.Fn
			PreferredBackupWindow?:              string | fn.Fn
			PreferredMaintenanceWindow?:         string | fn.Fn
			ProcessorFeatures?:                  [...close({
				Name?:  string | fn.Fn
				Value?: string | fn.Fn
			})] | fn.If
			PromotionTier?:              (>=0 & <=15) | fn.Fn
			PubliclyAccessible?:         bool | fn.Fn
			SourceDBInstanceIdentifier?: string | fn.Fn
			SourceRegion?:               string | fn.Fn
			StorageEncrypted?:           bool | fn.Fn
			StorageType?:                string | fn.Fn
			Tags?:                       [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			Timezone?:                    string | fn.Fn
			UseDefaultProcessorFeatures?: bool | fn.Fn
			VPCSecurityGroups?:           [...(string | fn.Fn)] | (string | fn.Fn)
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain" | "Snapshot"
		UpdateReplacePolicy?: "Delete" | "Retain" | "Snapshot"
		Metadata?: [string]: _
		Condition?: string
	}
	DBParameterGroup :: {
		Type:       "AWS::RDS::DBParameterGroup"
		Properties: close({
			Description: string | fn.Fn
			Family:      string | fn.Fn
			Parameters?: {
				[string]: string | fn.Fn
			} | fn.If
			Tags?: [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DBProxy :: {
		Type:       "AWS::RDS::DBProxy"
		Properties: close({
			Auth: [...close({
				AuthScheme?:  string | fn.Fn
				Description?: string | fn.Fn
				IAMAuth?:     string | fn.Fn
				SecretArn?:   string | fn.Fn
				UserName?:    string | fn.Fn
			})] | fn.If
			DBProxyName:        string | fn.Fn
			DebugLogging?:      bool | fn.Fn
			EngineFamily:       string | fn.Fn
			IdleClientTimeout?: int | fn.Fn
			RequireTLS?:        bool | fn.Fn
			RoleArn:            string | fn.Fn
			Tags?:              [...close({
				Key?:   string | fn.Fn
				Value?: string | fn.Fn
			})] | fn.If
			VpcSecurityGroupIds?: [...(string | fn.Fn)] | (string | fn.Fn)
			VpcSubnetIds:         [...(string | fn.Fn)] | (string | fn.Fn)
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DBProxyTargetGroup :: {
		Type:       "AWS::RDS::DBProxyTargetGroup"
		Properties: close({
			ConnectionPoolConfigurationInfo?: close({
				ConnectionBorrowTimeout?:   int | fn.Fn
				InitQuery?:                 string | fn.Fn
				MaxConnectionsPercent?:     int | fn.Fn
				MaxIdleConnectionsPercent?: int | fn.Fn
				SessionPinningFilters?:     [...(string | fn.Fn)] | (string | fn.Fn)
			}) | fn.If
			DBClusterIdentifiers?:  [...(string | fn.Fn)] | (string | fn.Fn)
			DBInstanceIdentifiers?: [...(string | fn.Fn)] | (string | fn.Fn)
			DBProxyName:            string | fn.Fn
			TargetGroupName:        string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DBSecurityGroup :: {
		Type:       "AWS::RDS::DBSecurityGroup"
		Properties: close({
			DBSecurityGroupIngress: [...close({
				CIDRIP?:                  string | fn.Fn
				EC2SecurityGroupId?:      string | fn.Fn
				EC2SecurityGroupName?:    string | fn.Fn
				EC2SecurityGroupOwnerId?: string | fn.Fn
			})] | fn.If
			EC2VpcId?:        string | fn.Fn
			GroupDescription: string | fn.Fn
			Tags?:            [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DBSecurityGroupIngress :: {
		Type:       "AWS::RDS::DBSecurityGroupIngress"
		Properties: close({
			CIDRIP?:                  string | fn.Fn
			DBSecurityGroupName:      string | fn.Fn
			EC2SecurityGroupId?:      string | fn.Fn
			EC2SecurityGroupName?:    string | fn.Fn
			EC2SecurityGroupOwnerId?: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DBSubnetGroup :: {
		Type:       "AWS::RDS::DBSubnetGroup"
		Properties: close({
			DBSubnetGroupDescription: string | fn.Fn
			DBSubnetGroupName?:       string | fn.Fn
			SubnetIds:                [...(string | fn.Fn)] | (string | fn.Fn)
			Tags?:                    [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	EventSubscription :: {
		Type:       "AWS::RDS::EventSubscription"
		Properties: close({
			Enabled?:         bool | fn.Fn
			EventCategories?: [...(string | fn.Fn)] | (string | fn.Fn)
			SnsTopicArn:      string | fn.Fn
			SourceIds?:       [...(string | fn.Fn)] | (string | fn.Fn)
			SourceType?:      string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	OptionGroup :: {
		Type:       "AWS::RDS::OptionGroup"
		Properties: close({
			EngineName:           string | fn.Fn
			MajorEngineVersion:   string | fn.Fn
			OptionConfigurations: [...close({
				DBSecurityGroupMemberships?: [...(string | fn.Fn)] | (string | fn.Fn)
				OptionName:                  string | fn.Fn
				OptionSettings?:             [...close({
					Name?:  string | fn.Fn
					Value?: string | fn.Fn
				})] | fn.If
				OptionVersion?:               string | fn.Fn
				Port?:                        int | fn.Fn
				VpcSecurityGroupMemberships?: [...(string | fn.Fn)] | (string | fn.Fn)
			})] | fn.If
			OptionGroupDescription: string | fn.Fn
			Tags?:                  [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
