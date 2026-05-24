Clear-Host


$continuar = "s"

while ($continuar -eq "s") {

    $nms = 50..100
    $nm = Get-Random $numeros

    $acertou = $false

    for ($i = 1; $i -le 5; $i++) {

        [int]$palpite = Read-Host "Digite seu palpite"

        if ($palpite -lt $nm) {

            Write-Host "Digite um número maior"

        }
        elseif ($palpite -gt $nm) {

            Write-Host "Digite um número menor"

        }
        else {

            Write-Host "Vc acertou o numero realmente é: $numero 😒" -foregroundcolor Green

            $acertou = $true

            break
        }
    }

    if ($acertou -eq $false) {

        Write-Host "Vc perdeu o numero sorteado era: $numero 🤣" -foregroundcolor red
    }

    $continuar = Read-Host "Deseja jogar novamente? (s/n)"
    Clear-Host
}