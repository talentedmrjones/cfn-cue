package usgovwest1

import "github.com/TangoGroup/aws/fn"

ACMPCA :: {
	Certificate :: {
		Type:       "AWS::ACMPCA::Certificate"
		Properties: close({
			CertificateAuthorityArn:   string | fn.Fn
			CertificateSigningRequest: string | fn.Fn
			SigningAlgorithm:          string | fn.Fn
			TemplateArn?:              string | fn.Fn
			Validity:                  {
				[string]: _
			} | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	CertificateAuthority :: {
		Type:       "AWS::ACMPCA::CertificateAuthority"
		Properties: close({
			KeyAlgorithm:             string | fn.Fn
			RevocationConfiguration?: {
				[string]: _
			} | fn.Fn
			SigningAlgorithm: string | fn.Fn
			Subject:          {
				[string]: _
			} | fn.Fn
			Tags?: [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			Type: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	CertificateAuthorityActivation :: {
		Type:       "AWS::ACMPCA::CertificateAuthorityActivation"
		Properties: close({
			Certificate:             string | fn.Fn
			CertificateAuthorityArn: string | fn.Fn
			CertificateChain?:       string | fn.Fn
			Status?:                 string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
