---
layout: glossary
title: Stop-VSStackSetOperation
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Stop-VSStackSetOperation

## SYNOPSIS
Stops an in-progress operation on a stack set and its associated stack instances.

## SYNTAX

```
Stop-VSStackSetOperation [[-StackSetName] <String>] [[-OperationId] <String>] [[-ProfileName] <String>]
 [-WhatIf] [-Confirm]
```

## DESCRIPTION
{{Fill in the Description}}

## PARAMETERS

### -StackSetName
The name or unique ID of the stack set that you want to stop the operation for.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OperationId
The ID of the stack operation.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProfileName
The name of the configuration profile to deploy the stack with.
Defaults to $env:AWS_PROFILE, if set.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: $env:AWS_PROFILE
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
