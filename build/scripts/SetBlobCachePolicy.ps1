param (
    [string] $StorageAccountName,
    [string] $StorageAccountKey,
    [string] $ContainerName
)

$storageContext = New-AzStorageContext -StorageAccountName $StorageAccountName -StorageAccountKey $StorageAccountKey
$blobs = Get-AzStorageBlob -Context $storageContext -Container $ContainerName


foreach($blob in $blobs)
{
    $cacheControl = ""
    
    switch -Wildcard ($blob.ContentType)
    {
        "application/javascript" {$cacheControl = "max-age=31536000"; Break;}
        "application/x-javascript" {$cacheControl = "max-age=31536000"; Break;}
        "image/*" {$cacheControl = "max-age=86400"; Break;}
        "text/css" {$cacheControl = "max-age=31536000"; Break;}
        "text/html" {$cacheControl = "no-cache"; Break;}
        "text/plain" {$cacheControl = "max-age=86400"; Break;}
    }
    
    $cloudBlockBlob = [Microsoft.Azure.Storage.Blob.CloudBlockBlob] $blob.ICloudBlob
    $cloudBlockBlob.Properties.CacheControl = $cacheControl 
    $cloudBlockBlob.SetProperties() 
}
