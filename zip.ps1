Add-Type -A System.IO.Compression.FileSystem
$src = $args[0];
$dst = $args[1];
[IO.Compression.ZipFile]::CreateFromDirectory($src, $dst)