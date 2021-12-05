$values = Get-Content .\Day3\input_day3.txt

0..11 | % { Set-Variable "bit$_" -Value 0 }

for ($i = 0; $i -lt $values.Count; $i++) {
    0..11 | % { Set-variable -Name "bit$_" -Value (((Get-Variable "bit$_").Value) + ($values[$i].Substring($_,1))) }
}

0..11 | % {
    if ((Get-Variable "bit$_").Value -gt (($values.Count)/2)) {
        Set-variable -Name "bit$_" -Value 1
    }
    else {
        Set-variable -Name "bit$_" -Value 0
    }
}

$gamma = [System.Convert]::ToInt32((-join (Get-Variable | ? Name -Like "bit*" | select Value).Value), 2)

$gammabin = (-join (Get-Variable | ? Name -Like "bit*" | select Value).Value)

0..11 | % { 
    if ($gammabin.ToCharArray().GetValue($_).ToString() -eq 0) {
        Set-variable -Name "bit$_" -Value 1
    }
    else {
        Set-variable -Name "bit$_" -Value 0
    }
}

$epsilon = [System.Convert]::ToInt32(( -join (Get-Variable | ? Name -Like "bit*" | select Value).Value), 2)

Write-Output "Result : $($gamma*$epsilon)"