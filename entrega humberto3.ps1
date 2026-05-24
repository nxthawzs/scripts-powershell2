clear-host

$nms = 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
$nm = Get-Random $nms

Write-Host "Tabuada $nm"

for ($i = 1; $i -le 20; $i++) {

    $resultado = $nm * $i

    Write-Host "$nm x $i = $resultado" -ForegroundColor Yellow
}