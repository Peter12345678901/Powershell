$src = "C:\Users\pierr\Downloads"
$dst = "C:\Users\pierr\3D Druck"

Get-ChildItem $src -Filter *.stl | ForEach-Object {
    $file = $_.FullName
    $destination = Join-Path $dst $_.Name
    Move-Item $file $destination
}
