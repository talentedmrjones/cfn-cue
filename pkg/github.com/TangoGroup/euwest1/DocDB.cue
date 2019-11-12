package euwest1

import "github.com/TangoGroup/fn"

DocDB :: {
	DBCluster :: {
		Type: "AWS::DocDB::DBCluster"
		Properties: {
			AvailabilityZones?: [...(string | fn.Fn)]
			BackupRetentionPeriod?:       (int & (>=1 & <=35)) | fn.Fn
			DBClusterIdentifier?:         string | fn.Fn
			DBClusterParameterGroupName?: string | fn.Fn
			DBSubnetGroupName?:           string | fn.Fn
			EnableCloudwatchLogsExports?: [...(string | fn.Fn)]
			EngineVersion?:              (string & ("docdb")) | fn.Fn
			KmsKeyId?:                   string | fn.Fn
			MasterUserPassword?:         string | fn.Fn
			MasterUsername?:             string | fn.Fn
			Port?:                       int | fn.Fn
			PreferredBackupWindow?:      string | fn.Fn
			PreferredMaintenanceWindow?: string | fn.Fn
			SnapshotIdentifier?:         string | fn.Fn
			StorageEncrypted?:           bool | fn.Fn
			Tags?: [...{
			}]
			VpcSecurityGroupIds?: [...(string | fn.Fn)]
		}
	}
	DBClusterParameterGroup :: {
		Type: "AWS::DocDB::DBClusterParameterGroup"
		Properties: {
			Description: string | fn.Fn
			Family:      string | fn.Fn
			Name?:       string | fn.Fn
			Parameters:  {
				[string]: _
			} | fn.Fn
			Tags?: [...{
			}]
		}
	}
	DBInstance :: {
		Type: "AWS::DocDB::DBInstance"
		Properties: {
			AutoMinorVersionUpgrade?:    bool | fn.Fn
			AvailabilityZone?:           string | fn.Fn
			DBClusterIdentifier:         string | fn.Fn
			DBInstanceClass:             (string & ("db.r4.16xlarge" | "db.r4.2xlarge" | "db.r4.4xlarge" | "db.r4.8xlarge" | "db.r4.large" | "db.r4.xlarge" | "db.r5.12xlarge" | "db.r5.24xlarge" | "db.r5.2xlarge" | "db.r5.4xlarge" | "db.r5.large" | "db.r5.xlarge")) | fn.Fn
			DBInstanceIdentifier?:       string | fn.Fn
			PreferredMaintenanceWindow?: string | fn.Fn
			Tags?: [...{
			}]
		}
	}
	DBSubnetGroup :: {
		Type: "AWS::DocDB::DBSubnetGroup"
		Properties: {
			DBSubnetGroupDescription: string | fn.Fn
			DBSubnetGroupName?:       string | fn.Fn
			SubnetIds: [...(string | fn.Fn)]
			Tags?: [...{
			}]
		}
	}
}
