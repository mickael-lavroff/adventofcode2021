$values = (Get-Content Day1\input.txt)
$counter = 1

for ($i = 1; $i -lt $values.Count ; $i++) { 
    if ($values[$i] -gt $values[$i - 1]) {
        $counter++ 
    } 
}

Write-Output "Increase : $counter / Decrease : $($values.Count - $counter)"