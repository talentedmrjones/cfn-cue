package useast1

import "github.com/TangoGroup/fn"

SecurityHub :: {
	Hub :: {
		Type: "AWS::SecurityHub::Hub"
		Properties: Tags?: {
			[string]: _
		} | fn.Fn
	}
}
