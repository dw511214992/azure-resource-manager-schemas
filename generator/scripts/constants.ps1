## ===========================================================================
# constants
$generatorRoot = resolvepath $PSScriptRoot/..
$tmp = resolvepath $generatorRoot/tmp ; mkdir -ea 0  $tmp

$restSpecsRepoPath = resolvepath $tmp/specs
$restSpecsRepoUri = "https://github.com/azure/azure-rest-api-specs"
$restSpecsRepoCommitHash = "master"

# Change to local path to use locally-built copy
$autoRestGenerator = '@microsoft.azure/autorest.azureresourceschema@v3'
$autoRestVerboseOutput = $false

$schemasBaseUri = "https://schema.management.azure.com/schemas"
$schemasBasePath = "$generatorRoot/../schemas"
$generatedSchemasUri = "$schemasBaseUri/2019-04-01/generatedResources.json"
$generatedSchemasPath = "$schemasBasePath/2019-04-01/generatedResources.json"
$generatedSchemasTemplatePath = "$generatorRoot/resources/generatedResources_template.json"

# Set of base paths and allowed API versions. Use '*' to specify all API versions.
# See find-specs.ps1 to regenerate this list.
$apiVersionWhitelist  = @{
  'sqlvirtualmachine/resource-manager/Microsoft.SqlVirtualMachine' = @('*');
  'machinelearningcompute/resource-manager/Microsoft.MachineLearningCompute' = @('*');
  'iotspaces/resource-manager/Microsoft.IoTSpaces' = @('*');
  'botservice/resource-manager/Microsoft.BotService' = @('*');
  'databox/resource-manager/Microsoft.DataBox' = @('*');
  'windowsiot/resource-manager/Microsoft.WindowsIoT' = @('*');
  'databricks/resource-manager/Microsoft.Databricks' = @('*');
  'storagesync/resource-manager/Microsoft.StorageSync' = @('*');
  'devspaces/resource-manager/Microsoft.DevSpaces' = @('*');
  'policyinsights/resource-manager/Microsoft.PolicyInsights' = @('*');
  'servicefabricmesh/resource-manager/Microsoft.ServiceFabricMesh' = @('*');
  'labservices/resource-manager/Microsoft.LabServices' = @('*');
  'EnterpriseKnowledgeGraph/resource-manager/Microsoft.EnterpriseKnowledgeGraph' = @('*');
  'edgegateway/resource-manager/Microsoft.DataBoxEdge' = @('*')
};