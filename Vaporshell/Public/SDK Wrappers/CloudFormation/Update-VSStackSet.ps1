function Update-VSStackSet {
    [cmdletbinding(DefaultParameterSetName = "Path",SupportsShouldProcess = $true,ConfirmImpact = "High")]
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "TemplateBody",ValueFromPipeline = $true)]
        [String]
        $TemplateBody,
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "Path")]
        [ValidateScript( {Test-Path $_})]
        [String]
        $Path,
        [parameter(Mandatory = $true,Position = 0,ParameterSetName = "TemplateUrl")]
        [String]
        $TemplateUrl,
        [parameter(Mandatory = $true,ParameterSetName = "UsePreviousTemplate")]
        [Switch]
        $UsePreviousTemplate,
        [parameter(Mandatory = $false)]
        [ValidateSet("CAPABILITY_IAM","CAPABILITY_NAMED_IAM")]
        [String[]]
        $Capabilities,
        [parameter(Mandatory = $false)]
        [String]
        $Description,
        [parameter(Mandatory = $false)]
        [String]
        $OperationId,
        [parameter(Mandatory = $false)]
        [Amazon.CloudFormation.Model.StackSetOperationPreferences]
        $OperationPreferences,
        [parameter(Mandatory = $false)]
        [Amazon.CloudFormation.Model.Parameter[]]
        $Parameters,
        [parameter(Mandatory = $false)]
        [String]
        $StackSetName,
        [parameter(Mandatory = $false)]
        [String]
        $Tags,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        if ($PSBoundParameters.Keys -contains "Tags") {
            $PSBoundParameters["Tags"] += (VSStackTag BuiltWith VaporShell)
        }
        else {
            $PSBoundParameters["Tags"] = (VSStackTag BuiltWith VaporShell)
        }
        $method = "UpdateStackSet"
        $requestType = "Amazon.CloudFormation.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            switch ($key) {
                Path {
                    $resolvedPath = (Resolve-Path $Path).Path
                    $request.TemplateBody = [System.IO.File]::ReadAllText($resolvedPath)
                }
                Default {
                    if ($request.PSObject.Properties.Name -contains $key) {
                        $request.$key = $PSBoundParameters[$key]
                    }
                }
            }
        }
        if ($PSCmdlet.ShouldProcess($request)) {
            $results = ProcessRequest $PSCmdlet.ParameterSetName $ProfileName $method $request
            if (!$results) {
                return
            }
            elseif ($results -is 'System.Management.Automation.ErrorRecord') {
                $PSCmdlet.ThrowTerminatingError($results)
            }
            elseif ($results) {
                return $results
            }
        }
    }
}