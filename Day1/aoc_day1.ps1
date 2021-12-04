# Challenge Part one
$values = (Get-Content Day1\input.txt)
$counter = 0

for ($i = 1; $i -lt $values.Count; $i++) {
    if ($values[$i + 1] -gt $values[$i]) {
        $counter++
    }
}

Write-Output "Result : $counter"

# Challenge Part two
$counter = 0

for ($i=0; $i -le (($values.Count)-3); $i++) {

    if (($values[$i+1] + $values[$i+2] + $values[$i+3]) -gt ($values[$i] + $values[$i+1] + $values[$i+2])) {
        $counter++
    }
}

Write-Output "Result : $counter"