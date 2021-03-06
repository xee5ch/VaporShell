﻿function Add-VSS3BucketNotificationFilter {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.NotificationFilter resource property to the template

    .DESCRIPTION
        Adds an AWS::S3::Bucket.NotificationFilter resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter.html

    .PARAMETER S3Key
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter.html#cfn-s3-bucket-notificationconfiguraiton-config-filter-s3key    
		Required: True    
		Type: S3KeyFilter    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.Bucket.NotificationFilter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $S3Key
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.NotificationFilter'
    }
}
