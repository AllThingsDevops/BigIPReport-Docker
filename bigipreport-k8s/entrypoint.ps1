if (Test-path "/opt/bigipreport/config/bigipreportconfig.xml") {
    $Config = Get-Content "/opt/bigipreport/config/bigipreportconfig.xml"
    
    $F5_USERNAME = $env:F5_USERNAME
    $F5_PASSWORD = $env:F5_PASSWORD
    $F5_SUPPORT_USERNAME = $env:F5_SUPPORT_USERNAME
    $F5_SUPPORT_PASSWORD = $env:F5_SUPPORT_USERNAME

    if ($null -notin @($F5_USERNAME, $F5_PASSWORD, $F5_SUPPORT_USERNAME, $F5_SUPPORT_PASSWORD)){
        Write-Host "Environment variables set, replacing credentials in the configmap"
        $Config -replace '{{F5_USERNAME}}', $F5_USERNAME `
                -replace '{{F5_PASSWORD}}', $F5_PASSWORD `
                -replace '{{F5_SUPPORT_USERNAME}}', $F5_SUPPORT_USERNAME `
                -replace '{{F5_SUPPORT_PASSWORD}}', $F5_SUPPORT_PASSWORD `
                | Out-File /opt/bigipreport/bigipreportconfig.xml
        & pwsh -c /opt/bigipreport/bigipreport.ps1
    } Else {
        Write-Host "At least one environment variable missing, using config map as is"
        & pwsh -c /opt/bigipreport/bigipreport.ps1 /opt/bigipreport/config/bigipreportconfig.xml
    }
} else {
    Write-Error "Config file was not found in /opt/bigipreport/config/bigipreportconfig.xml, have you mounted the config map?"
}

