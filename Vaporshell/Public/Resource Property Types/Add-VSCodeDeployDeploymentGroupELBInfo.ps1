﻿function Add-VSCodeDeployDeploymentGroupELBInfo {
    <#
    .SYNOPSIS
        Adds an AWS::CodeDeploy::DeploymentGroup.ELBInfo resource property to the template

    .DESCRIPTION
        Adds an AWS::CodeDeploy::DeploymentGroup.ELBInfo resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-elbinfo.html

    .PARAMETER Name
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-elbinfo.html#cfn-codedeploy-deploymentgroup-elbinfo-name    
		PrimitiveType: String    
		Required: False    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeDeploy.DeploymentGroup.ELBInfo')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Name
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeDeploy.DeploymentGroup.ELBInfo'
    }
}
