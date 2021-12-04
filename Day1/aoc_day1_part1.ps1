$values = (Get-Content .\Day1\input_day1.txt)
$counter = 0

for ($i=0; $i -lt $values.Count; $i++) {
    if ($values[$i+1] -gt $values[$i]) {
        $counter++
    }
}

Write-Output "Result : $counter"