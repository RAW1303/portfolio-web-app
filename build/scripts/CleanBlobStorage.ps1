param (
    [string] $StorageAccountName,
    [string] $StorageAccountKey,
    [string] $ContainerName
)

$storageContext = New-AzStorageContext -StorageAccountName $StorageAccountName -StorageAccountKey $StorageAccountKey
Get-AzStorageBlob -Context $storageContext -Container $ContainerName | Remove-AzStorageBlob