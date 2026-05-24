Clear-Host

$continuar = "s"

while ($continuar -eq "s") {

    $acertos = 0

    while ($true) {

        $numeros = 2..100

        $n1 = Get-Random $numeros
        $n2 = Get-Random $numeros

        $op = 1..3
        $op = Get-Random $op

        switch ($op) {

            1 {
                $simbolo = "+"
                $rs = $n1 + $n2
            }

            2 {
                $simbolo = "-"
                $rs = $n1 - $n2
            }

            3 {
                $simbolo = "*"
                $rs = $n1 * $n2
            }
        }

        [int]$rp = Read-Host "Quanto é $n1 $simbolo $n2 ?"

        if ($rp -eq $rs) {

            $acertos++

            Write-Host "Acertou!😁" -foregroundcolor Green
            Write-Host "Quantidade de acertos: $acertos"
        }
        else {

            Write-Host "Errou! 😒" -foregroundcolor red
           
            Write-Host "Você acertou $acertos."

            break
        }
    }

    $continuar = Read-Host "Deseja recomeçar? (s/n)"

    Clear-Host
}