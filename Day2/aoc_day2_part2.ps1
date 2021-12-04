Get-Content .\Day2\input_day2.txt | % {

    switch -Regex ($_.Substring(0, 2)) {
        'up' { $aim -= [int]($input[0].Substring(3, 1)) }
        'do' { $aim += [int]($input[0].Substring(5, 1)) }
        'fo' { $horizontal += [int]($input[0].Substring(8, 1)); $depth += ($aim * [int]($input[0].Substring(8, 1))); }
    }
}

Write-Output "Result : $($horizontal*$depth)"