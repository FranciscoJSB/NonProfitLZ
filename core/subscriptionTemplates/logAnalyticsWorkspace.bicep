
param rgName string


param workspaceName string = ''


param workspaceRegion string = deployment().location


param retentionInDays string = '30'

var laDeploymentName = 'fsi-loganalytics'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2018-05-01' = {
  name: rgName
  location: deployment().location
}

resource laDeployment 'Microsoft.Resources/deployments@2018-05-01' = {
  name: laDeploymentName
  resourceGroup: rgName
  dependsOn: [
    resourceGroup
  ]
  properties: {
    mode: 'Incremental'
    template: {
      $schema: 'http://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json'
      contentVersion: '1.0.0.0'
      parameters: {}
      variables: {}
      resources: [
        {
          apiVersion: '2020-08-01'
          location: workspaceRegion
          name: workspaceName
          type: 'Microsoft.OperationalInsights/workspaces'
          properties: {
            sku: {
              name: 'PerGB2018'
            }
            enableLogAccessUsingOnlyResourcePermissions: true
            retentionInDays: int(retentionInDays)
          }
        }
      ]
      outputs: {}
    }
  }
}

output resourceGroupName string = resourceGroup.name
