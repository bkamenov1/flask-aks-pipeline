param location string = resourceGroup().location
param aksName string = 'AKS1234'
param workspaceName string = 'aks-log-${uniqueString(resourceGroup().id)}'

resource logAnalytics 'Microsoft.OperationalInsights/workspaces@2021-06-01' = {
  name: workspaceName
  location: location
  properties: {
    sku: {
      name: 'PerGB2018'
    }
    retentionInDays: 30
  }
}

// Reference to existing AKS cluster
resource aks 'Microsoft.ContainerService/managedClusters@2023-01-01' existing = {
  name: aksName
}

// Diagnostic settings on the AKS cluster using 'scope'
resource monitorAddon 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = {
  name: 'aks-monitoring'
  scope: aks
  properties: {
    workspaceId: logAnalytics.id
    logs: [
      {
        category: 'kube-apiserver'
        enabled: true
        retentionPolicy: {
          enabled: false
          days: 0
        }
      }
    ]
    metrics: [
      {
        category: 'AllMetrics'
        enabled: true
        retentionPolicy: {
          enabled: false
          days: 0
        }
      }
    ]
  }
}
