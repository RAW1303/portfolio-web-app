param (
    [string] $storageName,
    [string] $containerName
)

$storageContext = New-AzStorageContext -StorageAccountName 'rawportfoliowebuistorage' -UseConnectedAccount
Get-AzStorageBlob -Context $storageContext -Container '$web'
