﻿function Add-VSOpsWorksLayerLoadBasedAutoScaling {
    <#
    .SYNOPSIS
        Adds an AWS::OpsWorks::Layer.LoadBasedAutoScaling resource property to the template

    .DESCRIPTION
        Adds an AWS::OpsWorks::Layer.LoadBasedAutoScaling resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html

    .PARAMETER DownScaling
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-downscaling    
		Required: False    
		Type: AutoScalingThresholds    
		UpdateType: Mutable    

    .PARAMETER Enable
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-enable    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER UpScaling
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-upscaling    
		Required: False    
		Type: AutoScalingThresholds    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.OpsWorks.Layer.LoadBasedAutoScaling')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DownScaling,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $Enable,
        [parameter(Mandatory = $false)]
        $UpScaling
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.OpsWorks.Layer.LoadBasedAutoScaling'
    }
}
