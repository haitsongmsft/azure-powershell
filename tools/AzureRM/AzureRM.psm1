#  
# Module manifest for module 'AzureRM'  
#  
# Generated by: Microsoft Corporation  
#  
# Generated on: 09/18/2018 10:29:28
#  

$PSDefaultParameterValues.Clear()
Set-StrictMode -Version Latest

$preloadPath = (Join-Path $PSScriptRoot -ChildPath "PreloadAssemblies")
if($PSEdition -eq 'Desktop' -and (Test-Path $preloadPath))
{
    try 
    {
        Get-ChildItem -Path $preloadPath -Filter "*.dll" | ForEach-Object {  
            [System.Reflection.Assembly]::Load([System.IO.File]::ReadAllBytes($_.FullName)) 
        }
    }
    catch {}
}

Import-Module AzureRM.Profile -RequiredVersion 5.5.1 -Global
Import-Module Azure.Storage -RequiredVersion 4.5.0 -Global
Import-Module AzureRM.AnalysisServices -RequiredVersion 0.6.14 -Global
Import-Module Azure.AnalysisServices -RequiredVersion 0.5.4 -Global
Import-Module AzureRM.ApiManagement -RequiredVersion 6.1.5 -Global
Import-Module AzureRM.ApplicationInsights -RequiredVersion 0.1.8 -Global
Import-Module AzureRM.Automation -RequiredVersion 5.1.1 -Global
Import-Module AzureRM.Backup -RequiredVersion 4.0.10 -Global
Import-Module AzureRM.Batch -RequiredVersion 4.1.5 -Global
Import-Module AzureRM.Billing -RequiredVersion 0.14.6 -Global
Import-Module AzureRM.Cdn -RequiredVersion 5.0.5 -Global
Import-Module AzureRM.CognitiveServices -RequiredVersion 0.9.10 -Global
Import-Module AzureRM.Compute -RequiredVersion 5.5.2 -Global
Import-Module AzureRM.Consumption -RequiredVersion 0.3.7 -Global
Import-Module AzureRM.ContainerInstance -RequiredVersion 0.2.10 -Global
Import-Module AzureRM.ContainerRegistry -RequiredVersion 1.0.10 -Global
Import-Module AzureRM.DataFactories -RequiredVersion 5.0.3 -Global
Import-Module AzureRM.DataFactoryV2 -RequiredVersion 0.5.10 -Global
Import-Module AzureRM.DataLakeAnalytics -RequiredVersion 5.1.4 -Global
Import-Module AzureRM.DataLakeStore -RequiredVersion 6.1.2 -Global
Import-Module AzureRM.DevTestLabs -RequiredVersion 4.0.9 -Global
Import-Module AzureRM.Dns -RequiredVersion 5.0.4 -Global
Import-Module AzureRM.EventGrid -RequiredVersion 0.3.7 -Global
Import-Module AzureRM.EventHub -RequiredVersion 0.6.10 -Global
Import-Module AzureRM.HDInsight -RequiredVersion 4.1.8 -Global
Import-Module AzureRM.Insights -RequiredVersion 5.1.3 -Global
Import-Module AzureRM.IotHub -RequiredVersion 3.1.8 -Global
Import-Module AzureRM.KeyVault -RequiredVersion 5.2.1 -Global
Import-Module AzureRM.LogicApp -RequiredVersion 4.1.4 -Global
Import-Module AzureRM.MachineLearning -RequiredVersion 0.18.5 -Global
Import-Module AzureRM.MachineLearningCompute -RequiredVersion 0.4.8 -Global
Import-Module AzureRM.MarketplaceOrdering -RequiredVersion 0.2.5 -Global
Import-Module AzureRM.Media -RequiredVersion 0.10.4 -Global
Import-Module AzureRM.Network -RequiredVersion 6.7.0 -Global
Import-Module AzureRM.NotificationHubs -RequiredVersion 5.0.3 -Global
Import-Module AzureRM.OperationalInsights -RequiredVersion 5.0.6 -Global
Import-Module AzureRM.PolicyInsights -RequiredVersion 1.0.4 -Global
Import-Module AzureRM.PowerBIEmbedded -RequiredVersion 4.1.10 -Global
Import-Module AzureRM.RecoveryServices -RequiredVersion 4.1.8 -Global
Import-Module AzureRM.RecoveryServices.Backup -RequiredVersion 4.4.1 -Global
Import-Module AzureRM.RecoveryServices.SiteRecovery -RequiredVersion 0.2.9 -Global
Import-Module AzureRM.RedisCache -RequiredVersion 5.0.5 -Global
Import-Module AzureRM.Relay -RequiredVersion 0.3.10 -Global
Import-Module AzureRM.Resources -RequiredVersion 6.4.2 -Global
Import-Module AzureRM.Scheduler -RequiredVersion 0.16.10 -Global
Import-Module AzureRM.ServiceBus -RequiredVersion 0.6.11 -Global
Import-Module AzureRM.ServiceFabric -RequiredVersion 0.3.12 -Global
Import-Module AzureRM.SignalR -RequiredVersion 1.0.0 -Global
Import-Module AzureRM.Sql -RequiredVersion 4.11.3 -Global
Import-Module AzureRM.Storage -RequiredVersion 5.0.4 -Global
Import-Module AzureRM.StreamAnalytics -RequiredVersion 4.0.10 -Global
Import-Module AzureRM.Tags -RequiredVersion 4.0.5 -Global
Import-Module AzureRM.TrafficManager -RequiredVersion 4.1.1 -Global
Import-Module AzureRM.UsageAggregates -RequiredVersion 4.0.5 -Global
Import-Module AzureRM.Websites -RequiredVersion 5.0.9 -Global


if (Test-Path -Path "$PSScriptRoot\StartupScripts")
{
    Get-ChildItem "$PSScriptRoot\StartupScripts" | ForEach-Object {
        . $_.FullName
    }
}

$FilteredCommands = @()

if ($Env:ACC_CLOUD -eq $null)
{
    $FilteredCommands | ForEach-Object {
        if (!$global:PSDefaultParameterValues.Contains($_))
        {
            $global:PSDefaultParameterValues.Add($_,
                {
                    if ((Get-Command Get-AzContext -ErrorAction Ignore) -eq $null)
                    {
                        $context = Get-AzureRmContext
                    }
                    else
                    {
                        $context = Get-AzContext
                    }
                    if (($context -ne $null) -and $context.ExtendedProperties.ContainsKey("Default Resource Group")) {
                        $context.ExtendedProperties["Default Resource Group"]
                    } 
                })
        }
    }
}
