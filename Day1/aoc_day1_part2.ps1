$values = (Get-Content .\Day1\input_day1.txt)
$counter = 0

for ($i=0; $i -le (($values.Count)-3); $i++) {
    if (($values[$i+1] + $values[$i+2] + $values[$i+3]) -gt ($values[$i] + $values[$i+1] + $values[$i+2])) { $counter++ }
}

Write-Output "Result : $counter"