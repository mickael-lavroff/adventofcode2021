# Challenge part one
Get-Content Day2\input.txt | % {
    if ($_.Length -gt 8) {
        $forwards += [int]($_.Substring(8,1))
    }
    elseif ($_.Length -gt 5) {
        $downs += [int]($_.Substring(5,1))
    }
    elseif ($_.Length -gt 3) {
        $ups += [int]($_.Substring(3,1))
    }
}

Write-Output 'Result : '($forwards * ($downs - $ups))