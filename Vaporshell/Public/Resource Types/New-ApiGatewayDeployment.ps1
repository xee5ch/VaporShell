function New-ApiGatewayDeployment {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::Deployment resource to the template
    
    .DESCRIPTION
        The AWS::ApiGateway::Deployment resource creates a unique key that you can distribute to clients who are executing Amazon API Gateway (API Gateway) Method resources that require an API key. To specify which API key clients must use, map the API key with the RestApi and Stage resources that include the methods requiring a key.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html
    
    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

        In addition to the logical ID, certain resources also have a physical ID, which is the actual assigned name for that resource, such as an EC2 instance ID or an S3 bucket name. Use the physical IDs to identify resources outside of AWS CloudFormation templates, but only after the resources have been created. For example, you might give an EC2 instance resource a logical ID of MyEC2Instance; but when AWS CloudFormation creates the instance, AWS CloudFormation automatically generates and assigns a physical ID (such as i-28f9ba55) to the instance. You can use this physical ID to identify the instance and view its properties (such as the DNS name) by using the Amazon EC2 console. For resources that support custom names, you can assign your own names (physical IDs) to help you quickly identify resources. For example, you can name an S3 bucket that stores logs as MyPerformanceLogs.
    
    .PARAMETER Description
        A description of the purpose of the API Gateway deployment.
    
    .PARAMETER RestApiId
        The ID of the RestApi resource to deploy.
    
    .PARAMETER StageDescription
        Configures the stage that API Gateway creates with this deployment.
    
    .PARAMETER StageName
        A name for the stage that API Gateway creates with this deployment. Use only alphanumeric characters.
    
    .PARAMETER DeletionPolicy
        With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted. You specify a DeletionPolicy attribute for each resource that you want to control. If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

        To keep a resource when its stack is deleted, specify Retain for that resource. You can use retain for any resource. For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

        You must use one of the following options: "Delete","Retain"

    .PARAMETER DependsOn
        With the DependsOn attribute you can specify that the creation of a specific resource follows another. When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

        This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.

    .PARAMETER Metadata
        The Metadata attribute enables you to associate structured data with a resource. By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration. In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

        You must use a PSCustomObject containing key/value pairs here. This will be returned when describing the resource using AWS CLI.

    .PARAMETER UpdatePolicy
        Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource. AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

        You must use the "Add-UpdatePolicy" function here.
    
    .PARAMETER Condition
        Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

    .EXAMPLE
        $templateInit = Initialize-Vaporshell -Description "Testing New-ApiGatewayDeployment"
        $templateInit.AddResource((New-ApiGatewayDeployment -LogicalId "GatewayDeployment" -Description "My deployment" -RestApiId (Add-FnRef -Ref "MyApi") -StageDescription (Add-ApiGatewayDeploymentStageDescription -MethodSettings (Add-ApiGatewayDeploymentStageDescriptionMethodSetting -LoggingLevel ERROR) -Variables (Add-Variable -Name "ApiKey" -Value "kl234lkj23lfwe9") -CacheClusterEnabled True -CacheDataEncrypted False)))

        When the template is exported, this will convert to: 
```json
{
    "AWSTemplateFormatVersion": "2010-09-09",
    "Description": "Testing New-ApiGatewayDeployment",
    "Resources": {
        "GatewayDeployment": {
            "Type": "AWS::ApiGateway::Deployment",
            "Properties": {
                "Description": "My deployment",
                "RestApiId": {
                    "Ref": "MyApi"
                },
                "StageDescription": {
                    "MethodSettings": {
                        "LoggingLevel": "ERROR"
                    },
                    "Variables": {
                        "ApiKey": "kl234lkj23lfwe9"
                    },
                    "CacheClusterEnabled": "true",
                    "CacheDataEncrypted": "false"
                }
            }
        }
    }
}
````
    
    .NOTES
        When the logical ID of this resource is provided to the Ref intrinsic function, Ref returns the deployment ID, such as 123abc.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGateway.Deployment')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    throw 'The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'
                }
            })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $false,Position = 1)]
        [System.String]
        $Description,
        [parameter(Mandatory = $false,Position = 2)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $RestApiId,
        [parameter(Mandatory = $false,Position = 3)]
        [PSTypeName('Vaporshell.Resource.ApiGateway.Deployment.StageDescription')]
        $StageDescription,
        [parameter(Mandatory = $false,Position = 4)]
        [System.String]
        $StageName,
        [parameter(Mandatory = $false)]
        [ValidateSet("Delete","Retain")]
        [System.String]
        $DeletionPolicy,
        [parameter(Mandatory = $false)]
        [System.String[]]
        $DependsOn,
        [parameter(Mandatory = $false)]
        [System.Management.Automation.PSCustomObject]
        $Metadata,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.UpdatePolicy"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $UpdatePolicy,
        [parameter(Mandatory = $false)]
        $Condition
    )
    Begin {
        $ResourceParams = @{
            LogicalId = $LogicalId
            Type = "AWS::ApiGateway::Deployment"
        }
    }
    Process {
        switch ($PSBoundParameters.Keys) {
            'Description' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'Description' -Value $Description
            }
            'RestApiId' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'RestApiId' -Value $RestApiId
            }
            'StageDescription' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'StageDescription' -Value $StageDescription
            }
            'StageName' {
                if (!($ResourceParams["Properties"])) {
                    $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                }
                $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name 'StageName' -Value $StageName
            }
            'DeletionPolicy' {
                $ResourceParams.Add("DeletionPolicy",$DeletionPolicy)
            }
            'DependsOn' {
                $ResourceParams.Add("DependsOn",$DependsOn)
            }
            'Metadata' {
                $ResourceParams.Add("Metadata",$Metadata)
            }
            'UpdatePolicy' {
                $ResourceParams.Add("UpdatePolicy",$UpdatePolicy)
            }
            'Condition' {
                $ResourceParams.Add("Condition",$Condition)
            }
        }
    }
    End {
        $obj = New-VaporResource @ResourceParams
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGateway.Deployment'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}