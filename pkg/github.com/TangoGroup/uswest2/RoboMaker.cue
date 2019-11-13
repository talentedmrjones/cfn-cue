package uswest2

import "github.com/TangoGroup/fn"

RoboMaker :: {
	Fleet :: {
		Type: "AWS::RoboMaker::Fleet"
		Properties: {
			Name?: string | fn.Fn
			Tags?: {
				[string]: _
			} | fn.Fn
		}
		DependsOn?: string | [...string]
	}
	Robot :: {
		Type: "AWS::RoboMaker::Robot"
		Properties: {
			Architecture:      string | fn.Fn
			Fleet?:            string | fn.Fn
			GreengrassGroupId: string | fn.Fn
			Name?:             string | fn.Fn
			Tags?:             {
				[string]: _
			} | fn.Fn
		}
		DependsOn?: string | [...string]
	}
	RobotApplication :: {
		Type: "AWS::RoboMaker::RobotApplication"
		Properties: {
			CurrentRevisionId?: string | fn.Fn
			Name?:              string | fn.Fn
			RobotSoftwareSuite: {
				Name:    string | fn.Fn
				Version: string | fn.Fn
			}
			Sources: [...{
				Architecture: string | fn.Fn
				S3Bucket:     string | fn.Fn
				S3Key:        string | fn.Fn
			}]
			Tags?: {
				[string]: _
			} | fn.Fn
		}
		DependsOn?: string | [...string]
	}
	RobotApplicationVersion :: {
		Type: "AWS::RoboMaker::RobotApplicationVersion"
		Properties: {
			Application:        string | fn.Fn
			CurrentRevisionId?: string | fn.Fn
		}
		DependsOn?: string | [...string]
	}
	SimulationApplication :: {
		Type: "AWS::RoboMaker::SimulationApplication"
		Properties: {
			CurrentRevisionId?: string | fn.Fn
			Name?:              string | fn.Fn
			RenderingEngine: {
				Name:    string | fn.Fn
				Version: string | fn.Fn
			}
			RobotSoftwareSuite: {
				Name:    string | fn.Fn
				Version: string | fn.Fn
			}
			SimulationSoftwareSuite: {
				Name:    string | fn.Fn
				Version: string | fn.Fn
			}
			Sources: [...{
				Architecture: string | fn.Fn
				S3Bucket:     string | fn.Fn
				S3Key:        string | fn.Fn
			}]
			Tags?: {
				[string]: _
			} | fn.Fn
		}
		DependsOn?: string | [...string]
	}
	SimulationApplicationVersion :: {
		Type: "AWS::RoboMaker::SimulationApplicationVersion"
		Properties: {
			Application:        string | fn.Fn
			CurrentRevisionId?: string | fn.Fn
		}
		DependsOn?: string | [...string]
	}
}
