﻿function Add-VSWAFXssMatchSetXssMatchTuple {
    <#
    .SYNOPSIS
        Adds an AWS::WAF::XssMatchSet.XssMatchTuple resource property to the template

    .DESCRIPTION
        Adds an AWS::WAF::XssMatchSet.XssMatchTuple resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html

    .PARAMETER FieldToMatch
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html#cfn-waf-xssmatchset-xssmatchtuple-fieldtomatch    
		Required: True    
		Type: FieldToMatch    
		UpdateType: Mutable    

    .PARAMETER TextTransformation
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html#cfn-waf-xssmatchset-xssmatchtuple-texttransformation    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAF.XssMatchSet.XssMatchTuple')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $FieldToMatch,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TextTransformation
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAF.XssMatchSet.XssMatchTuple'
    }
}
