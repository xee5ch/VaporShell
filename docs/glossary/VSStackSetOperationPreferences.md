---
layout: glossary
title: VSStackSetOperationPreferences
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# VSStackSetOperationPreferences

## SYNOPSIS
{{Fill in the Synopsis}}

## SYNTAX

### FailureToleranceCountMaxConcurrentCount (Default)
```
VSStackSetOperationPreferences [-FailureToleranceCount] <Int32> [-MaxConcurrentCount] <Int32>
 [[-RegionOrder] <String[]>]
```

### FailureToleranceCountMaxConcurrentPercentage
```
VSStackSetOperationPreferences [-FailureToleranceCount] <Int32> [-MaxConcurrentPercentage] <Int32>
 [[-RegionOrder] <String[]>]
```

### FailureTolerancePercentageMaxConcurrentPercentage
```
VSStackSetOperationPreferences [-FailureTolerancePercentage] <Int32> [-MaxConcurrentPercentage] <Int32>
 [[-RegionOrder] <String[]>]
```

### FailureTolerancePercentageMaxConcurrentCount
```
VSStackSetOperationPreferences [-FailureTolerancePercentage] <Int32> [-MaxConcurrentCount] <Int32>
 [[-RegionOrder] <String[]>]
```

## DESCRIPTION
{{Fill in the Description}}

## PARAMETERS

### -FailureToleranceCount
{{Fill FailureToleranceCount Description}}

```yaml
Type: Int32
Parameter Sets: FailureToleranceCountMaxConcurrentCount, FailureToleranceCountMaxConcurrentPercentage
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FailureTolerancePercentage
{{Fill FailureTolerancePercentage Description}}

```yaml
Type: Int32
Parameter Sets: FailureTolerancePercentageMaxConcurrentPercentage, FailureTolerancePercentageMaxConcurrentCount
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxConcurrentCount
{{Fill MaxConcurrentCount Description}}

```yaml
Type: Int32
Parameter Sets: FailureToleranceCountMaxConcurrentCount, FailureTolerancePercentageMaxConcurrentCount
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxConcurrentPercentage
{{Fill MaxConcurrentPercentage Description}}

```yaml
Type: Int32
Parameter Sets: FailureToleranceCountMaxConcurrentPercentage, FailureTolerancePercentageMaxConcurrentPercentage
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RegionOrder
{{Fill RegionOrder Description}}

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### None


## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
