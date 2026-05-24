clear-host

$quantidade = Read-Host "Digite quantos numeros quer"

$a = 0
$b = 1


for ($i = 0; $i -lt 10; $i++) {

    Write-Host $a

    $b = $a + $b
    $a = $b - $a
}