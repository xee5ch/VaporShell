---
layout: glossary
title: New-VSStack
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# New-VSStack

## SYNOPSIS
Creates a new stack

## SYNTAX

### Path (Default)
```
New-VSStack [-Path] <String> [-StackName <String>] [-Capabilities <String[]>] [-ClientRequestToken <String>]
 [-DisableRollback <Boolean>] [-NotificationARNs <String[]>] [-OnFailure <String>] [-Parameters <Object>]
 [-ResourceTypes <String[]>] [-RoleARN <String>] [-StackPolicyBody <String>] [-StackPolicyURL <String>]
 [-Tags <String>] [-TimeoutInMinutes <Int32>] [-ProfileName <String>] [-WhatIf] [-Confirm]
```

### TemplateBody
```
New-VSStack [-TemplateBody] <String> [-StackName <String>] [-Capabilities <String[]>]
 [-ClientRequestToken <String>] [-DisableRollback <Boolean>] [-NotificationARNs <String[]>]
 [-OnFailure <String>] [-Parameters <Object>] [-ResourceTypes <String[]>] [-RoleARN <String>]
 [-StackPolicyBody <String>] [-StackPolicyURL <String>] [-Tags <String>] [-TimeoutInMinutes <Int32>]
 [-ProfileName <String>] [-WhatIf] [-Confirm]
```

### TemplateUrl
```
New-VSStack [-TemplateUrl] <String> [-StackName <String>] [-Capabilities <String[]>]
 [-ClientRequestToken <String>] [-DisableRollback <Boolean>] [-NotificationARNs <String[]>]
 [-OnFailure <String>] [-Parameters <Object>] [-ResourceTypes <String[]>] [-RoleARN <String>]
 [-StackPolicyBody <String>] [-StackPolicyURL <String>] [-Tags <String>] [-TimeoutInMinutes <Int32>]
 [-ProfileName <String>] [-WhatIf] [-Confirm]
```

## DESCRIPTION
{{Fill in the Description}}

## PARAMETERS

### -TemplateBody
Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.

```yaml
Type: String
Parameter Sets: TemplateBody
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Path
File path to the local template file.

```yaml
Type: String
Parameter Sets: Path
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateUrl
Location of file containing the template body.
The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket

```yaml
Type: String
Parameter Sets: TemplateUrl
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackName
The name that is associated with the stack.
The name must be unique in the region in which you are creating the stack.
A stack name can contain only alphanumeric characters (case sensitive) and hyphens.
It must start with an alphabetic character and cannot be longer than 128 characters.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Capabilities
A list of values that you must specify before AWS CloudFormation can create certain stacks.
Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users.
For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.
The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM.
The following resources require you to specify this parameter: AWS::IAM::AccessKey, AWS::IAM::Group, AWS::IAM::InstanceProfile, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, and AWS::IAM::UserToGroupAddition.
If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.
If you have IAM resources, you can specify either capability.
If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM.
If you don't specify this parameter, this action returns an InsufficientCapabilities error.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientRequestToken
A unique identifier for this CreateStack request.
Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create a stack with the same name.
You might retry CreateStack requests to ensure that AWS CloudFormation successfully received them.
All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations.
For example, if you execute a CreateStack operation with the token token1, then all the StackEvents generated by that operation will have ClientRequestToken set as token1.
In the console, stack operations display the client request token on the Events tab.
Stack operations that are initiated from the console use the token format Console-StackOperation-ID, which helps you easily identify the stack operation .
For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisableRollback
Set to true to disable rollback of the stack if stack creation failed.
You can specify either DisableRollback or OnFailure, but not both.
Default: false

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NotificationARNs
The Simple Notification Service (SNS) topic ARNs to publish stack related events.
You can find your SNS topic ARNs using the SNS console or your Command Line Interface (CLI).

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnFailure
Determines what action will be taken if stack creation fails.
This must be one of: DO_NOTHING, ROLLBACK, or DELETE.
You can specify either OnFailure or DisableRollback, but not both.
Default: ROLLBACK

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameters
A list of Parameter structures that specify input parameters for the stack.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceTypes
The template resource types that you have permissions to work with for this create stack action, such as AWS::EC2::Instance, AWS::EC2::*, or Custom::MyCustomInstance.
Use the following syntax to describe template resource types: AWS::* (for all AWS resource), Custom::* (for all custom resources), Custom::logical_ID (for a specific custom resource), AWS::service_name::* (for all resources of a particular AWS service), and AWS::service_name::resource_logical_ID (for a specific AWS resource).
If the list of resource types doesn't include a resource that you're creating, the stack creation fails.
By default, AWS CloudFormation grants permissions to all resource types.
AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleARN
The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to create the stack.
AWS CloudFormation uses the role's credentials to make calls on your behalf.
AWS CloudFormation always uses this role for all future operations on the stack.
As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it.
Ensure that the role grants least privilege.
If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack.
If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackPolicyBody
Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StackPolicyURL
Location of file containing the template body.
The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
Key-value pairs to associate with this stack.
AWS CloudFormation also propagates these tags to resources in the stack.
You can specify a maximum of 50 tags.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeoutInMinutes
The amount of time that can pass before the stack status becomes CREATE_FAILED; if DisableRollback is not set or is set to false, the stack will be rolled back.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 0
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
Position: Named
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
