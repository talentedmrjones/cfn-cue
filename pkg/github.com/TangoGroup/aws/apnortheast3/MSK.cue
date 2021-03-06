package apnortheast3

import "github.com/TangoGroup/aws/fn"

MSK :: {
	Cluster :: {
		Type: "AWS::MSK::Cluster"
		Properties: {
			BrokerNodeGroupInfo: {
				BrokerAZDistribution?: string | fn.Fn
				ClientSubnets:         [...(string | fn.Fn)] | (string | fn.Fn)
				InstanceType:          string | fn.Fn
				SecurityGroups?:       [...(string | fn.Fn)] | (string | fn.Fn)
				StorageInfo?: EBSStorageInfo?: VolumeSize?: int | fn.Fn
			}
			ClientAuthentication?: Tls?: CertificateAuthorityArnList?: [...(string | fn.Fn)] | (string | fn.Fn)
			ClusterName: string | fn.Fn
			ConfigurationInfo?: {
				Arn:      string | fn.Fn
				Revision: int | fn.Fn
			}
			EncryptionInfo?: {
				EncryptionAtRest?: DataVolumeKMSKeyId: string | fn.Fn
				EncryptionInTransit?: {
					ClientBroker?: string | fn.Fn
					InCluster?:    bool | fn.Fn
				}
			}
			EnhancedMonitoring?: string | fn.Fn
			KafkaVersion:        string | fn.Fn
			NumberOfBrokerNodes: int | fn.Fn
			OpenMonitoring?: Prometheus: {
				JmxExporter?: EnabledInBroker:  bool | fn.Fn
				NodeExporter?: EnabledInBroker: bool | fn.Fn
			}
			Tags?: {
				[string]: _
			} | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
