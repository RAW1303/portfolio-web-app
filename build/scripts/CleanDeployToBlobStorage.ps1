param (
    [string] $FileDirectory,
    [string] $StorageAccountName,
    [string] $StorageAccountKey,
    [string] $ContainerName
)

$storageContext = New-AzStorageContext -StorageAccountName $StorageAccountName -StorageAccountKey $StorageAccountKey
Get-AzStorageBlob -Context $storageContext -Container $ContainerName | Remove-AzStorageBlob
$files = Get-ChildItem -Path $FileDirectory -File -Recurse

foreach($file in $files)
{
    if($file.Name -notin 'index.html','3rdpartylicenses.txt')
    {
        Set-AzureStorageBlobContent -Context $storageContext -Container $ContainerName
    }
    else 
    {
        Set-AzureStorageBlobContent -Context $storageContext -Container $ContainerName        
    }
}