---
layout: glossary
title: Add-VSKinesisAnalyticsApplicationReferenceDataSourceReferenceSchema
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSKinesisAnalyticsApplicationReferenceDataSourceReferenceSchema

## SYNOPSIS
Adds an AWS::KinesisAnalytics::ApplicationReferenceDataSource.ReferenceSchema resource property to the template

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationReferenceDataSourceReferenceSchema [[-RecordEncoding] <Object>]
 [-RecordColumns] <Object> [-RecordFormat] <Object>
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::ApplicationReferenceDataSource.ReferenceSchema resource property to the template

## PARAMETERS

### -RecordEncoding
Required: False    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordencoding    
PrimitiveType: String    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecordColumns
Type: List    
Required: True    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordcolumns    
ItemType: RecordColumn    
UpdateType: Mutable

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

### -RecordFormat
Type: RecordFormat    
Required: True    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordformat    
UpdateType: Mutable

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

### Vaporshell.Resource.KinesisAnalytics.ApplicationReferenceDataSource.ReferenceSchema

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html)
