using module libs\cmdlets\Write-AsciiTable.psm1


$module_config = @{
    function = @(
        'Write-AsciiTable'
    )
    alias = @(
        'wat'
    )
}

Export-ModuleMember @module_config 