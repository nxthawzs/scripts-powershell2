Clear-Host

[int]$inicio = Read-Host "Numero inicial"
[int]$fim = Read-Host "Numero final"

$tipo = Read-Host "'crescente' ou 'decrescente'"

if ($tipo -eq "crescente") {
    for ($i = $inicio; $i -le $fim; $i++) {

        Write-Host $i
    }
}
elseif ($tipo -eq "decrescente") {

    for ($i = $inicio; $i -ge $fim; $i--) {
        Write-Host $i
    }
}
else {
    Write-Host "Opção inválida" -ForegroundColor Red
}