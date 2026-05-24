Clear-Host

$continuar = "s"

while ($continuar -eq "s") {

    $usuario = Read-Host "Escolha: Pedra, Papel ou Tesoura"
    $opc = @("Pedra", "Papel", "Tesoura")
    $mqn = Get-Random $opc

    Write-Host "Máquina escolheu: $mqn"

    if ($usuario -eq $mqn) {

        Write-Host "Empatou!"
    }
    elseif (
        ($usuario -eq "Pedra" -and $mqn -eq "Tesoura") -or
        ($usuario -eq "Tesoura" -and $mqn -eq "Papel") -or
        ($usuario -eq "Papel" -and $mqn -eq "Pedra")
    ) {

        Write-Host "Você venceu!" -ForegroundColor Red
    }
    else {

        Write-Host "Você perdeu!" -ForegroundColor Green
    }

    $continuar = Read-Host "Deseja continuar jogando? (s/n)"

    Clear-Host
}