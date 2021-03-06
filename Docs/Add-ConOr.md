---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or
schema: 2.0.0
---

# Add-ConOr

## SYNOPSIS
Adds the condition function "Fn::Or" to a resource property

## SYNTAX

```
Add-ConOr [-Conditions] <Object[]>
```

## DESCRIPTION
Returns true if any one of the specified conditions evaluate to true, or returns false if all of the conditions evaluates to false.
Fn::Or acts as an OR operator.
The minimum number of conditions that you can include is 2, and the maximum is 10.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Add-ConOr -Conditions (Add-ConEquals -FirstValue "sg-mysggroup" -SecondValue (Add-FnRef -Ref "ASecurityGroup")),(Add-ConEquals -FirstValue "Production" -SecondValue (Add-FnRef -Ref "Environment"))
```

**When the template is exported, this will convert to:** 
```json
{"Fn::Or":[{"Fn::Equals":["sg-mysggroup",{"Ref":"ASecurityGroup"}]},{"Fn::Equals":["Production",{"Ref":"Environment"}]}]}
```

## PARAMETERS

### -Conditions
{{Fill Conditions Description}}

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Condition.Or

## NOTES
You can use the following functions in this condition statement:  
* Fn::FindInMap  
* Ref  
* Other condition functions  

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or)

