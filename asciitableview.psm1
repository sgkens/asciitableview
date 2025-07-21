# AsciiTableView Module
# This module provides cmdlets for displaying data in ASCII table format.
# It includes the Write-AsciiTable cmdlet for formatting and displaying data in various styles.
# It is designed to be used in PowerShell scripts and can be customized with different border styles and colors.
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