---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-findinmap.html
schema: 2.0.0
---

# Add-FnFindInMap

## SYNOPSIS
Adds the intrinsic function "Fn::FindInMap" to a resource property

## SYNTAX

```
Add-FnFindInMap [-MapName] <Object> [-TopLevelKey] <Object> [-SecondLevelKey] <Object>
```

## DESCRIPTION
The intrinsic function Fn::FindInMap returns the value corresponding to keys in a two-level map that is declared in the Mappings section.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Add-FnFindInMap -MapName "RegionMap" -TopLevelKey (Add-FnRef -Ref "$_AWSRegion") -SecondLevelKey "32"
```

**When the template is exported, this will convert to:** 
```json
{"Fn::FindInMap":["RegionMap",{"Ref":"AWS::Region"},"32"]}
```

## PARAMETERS

### -MapName
The logical name of a mapping declared in the Mappings section that contains the keys and values.
The value can be another function.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TopLevelKey
The top-level key name.
Its value is a list of key-value pairs.
The value can be another function.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecondLevelKey
The second-level key name, which is set to one of the keys from the list assigned to TopLevelKey.
The value can be another function.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Function.FindInMap

## NOTES
You can use the following functions in a Fn::FindInMap function:
    Fn::FindInMap
    Ref

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-findinmap.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-findinmap.html)

