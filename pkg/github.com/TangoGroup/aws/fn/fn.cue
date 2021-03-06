package fn

import "github.com/TangoGroup/aws/regions"

// Fn::Base64
// Fn::Cidr
// Fn::FindInMap
// Fn::GetAZs
// Fn::GetAtt
// Fn::ImportValue
// Fn::Join
// Fn::Select
// Fn::Split
// Fn::Sub
// Fn::Transform
// Ref

// Base64: https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-base64.html
// You can use any function that returns a string inside the Fn::Base64 function.
Base64 : close({
	"Fn::Base64": string | Base64 | FindInMap | GetAtt | ImportValue | Join | Select | Sub | Ref | If
})

// Cidr: https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-cidr.html
Cidr : close({
	// CidrFn :: Select | Ref
	"Fn::Cidr": [string | Select | Ref, GetAtt, Sub, Select, (>=1 & <=256) | Select | Ref, (>=0 & <=128) | Select | Ref]
})

// FindInMap: https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-findinmap.html
FindInMap : close({
	// FindInMapFn :: FindInMap | Ref
	"Fn::FindInMap": [string | FindInMap | Ref, string | FindInMap | Ref, string | FindInMap | Ref]
})

// GetAZs: https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getavailabilityzones.html
GetAZs : close({
	"Fn::GetAZs": regions.Regions | "" | (Ref & close({"Ref": "AWS::Region"}))
})

// GetAtt: https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getatt.html
GetAtt : close({
	// [Resource Name, Attribute Name]
	"Fn::GetAtt": [string, string | Ref] | string
})

// ImportValue: https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html
// You can use the following functions in the Fn::ImportValue function. The value of these functions can't depend on a resource.

ImportValue : close({
	"Fn::ImportValue": string | Base64 | FindInMap | If | Join | Select | Split | Sub | Ref
})

// Join: https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-join.html
Join : close({
	// JoinFn :: Base64 | FindInMap | GetAtt | GetAZs | If | ImportValue | Join | Split | Select | Sub | Ref
	"Fn::Join": [string, [...(bool | string | bytes | int | float | Base64 | FindInMap | GetAtt | GetAZs | If | ImportValue | Join | Split | Select | Sub | Ref)]]
})

// Select: https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-select.html
Select : close({
	// SelectFn :: FindInMap | GetAtt | GetAZs | If | Split | Ref
	"Fn::Select": [>=0 | Ref | FindInMap, [...(bool | string | bytes | int | float | FindInMap | GetAtt | GetAZs | If | Split | Cidr | Ref)] | FindInMap | GetAtt | GetAZs | If | Split | Ref]
})

// Split: https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-split.html
Split : close({
	// SplitFn :: Base64 | FindInMap | GetAtt | GetAZs | If | ImportValue | Join | Select | Sub | Ref
	"Fn::Split": [string, string | Base64 | FindInMap | GetAtt | GetAZs | If | ImportValue | Join | Select | Sub | Ref]
})

// Sub: https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-sub.html
Sub : close({
	// SubFn ::   Base64 | FindInMap | GetAtt | GetAZs | If | ImportValue | Join | Select | Ref
	"Fn::Sub": string | [string, close({
		[string]: string | Base64 | FindInMap | GetAtt | GetAZs | If | ImportValue | Join | Select | Sub | Ref
	})]
	// "Fn::Sub": string | [string, {[string]: string | Sub | Ref}]
	// "Fn::Sub": string | [string, {[string | SubFn]: string | SubFn}]
})

// Transform: https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-transform.html
// Transform :: {
//  "Fn::Transform": close({
//   Name: string
//   Parameters: {}
//  })
// }

// Ref: https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-ref.html
Ref : close({
	"Ref": string
})

// Condition Functions
// You can use the following functions in all other condition functions, such as Fn::Equals and Fn::Or:
// - Fn::FindInMap
// - Ref
// - Other condition functions

// https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-and
And : close({
	"Fn::And": [...(close({Condition: string}) | And | Equals | Not | Or)]
	// "Fn::And": list.MinItems(2) & list.MaxItems(10)
})

// https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-equals
Equals : close({
	"Fn::Equals": 2 * [string | number | bool | Ref | FindInMap | And | Equals | Not | Or | If] //, string | Ref | FindInMap | And | Equals | Not | Or | If]
})

// You can use the following functions in the Fn::If condition:
// - Fn::Base64
// - Fn::FindInMap
// - Fn::GetAtt
// - Fn::GetAZs
// - Fn::If
// - Fn::Join
// - Fn::Select
// - Fn::Sub
// - Ref

// https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-if
If : close({
	"Fn::If": [string, _ | Base64 | FindInMap | GetAtt | GetAZs | If | Join | Select | Sub | Ref, _ | Base64 | FindInMap | GetAtt | GetAZs | If | Join | Select | Sub | Ref]
})

// https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-not
Not : close({
	"Fn::Not": [close({Condition: string}) | And | Equals | Not | Or]
})

// https://docs.aws.amazon.com/en_pv/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or
// Returns true if any one of the specified conditions evaluate to true, or returns false if all of the conditions evaluates to false. Fn::Or acts as an OR operator. The minimum number of conditions that you can include is 2, and the maximum is 10.

Or : close({
	"Fn::Or": [...(close({Condition: string}) | And | Equals | Not | Or)]
})

LogicFn :: And | Equals | Not | Or

ConditionFn :: LogicFn | If

// Fn :: close(Base64 | Cidr | FindInMap | GetAZs | GetAtt | ImportValue | Join | Select | Split | Sub | Transform | Ref | And | Equals | If | Not | Or)
Fn :: Base64 | Cidr | FindInMap | GetAZs | GetAtt | ImportValue | Join | Select | Split | Sub | Ref | And | Equals | If | Not | Or
// Fn :: Sub | Ref
// Fn : Sub
