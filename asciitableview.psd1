@{

    RootModule             = 'asciitableview.psm1'
    ModuleVersion          = '0.1.0.0'
    CompatiblePSEditions   = @()
    GUID                   = 'd4bca43f-4cf1-4a2f-8c34-ba3945090b4e'
    Author                 = 'Garvey k. Snow'
    CompanyName            = 'phellams'
    Copyright              = '2023 Garvey k. Snow. All rights reserved.'
    Description            = 'Writes an ASCII table to the console.'
    PowerShellVersion      = '7.0'
    PowerShellHostName     = ''
    PowerShellHostVersion  = ''
    DotNetFrameworkVersion = ''
    ClrVersion             = ''
    ProcessorArchitecture  = ''
    RequiredModules        = @()
    RequiredAssemblies     = @()
    ScriptsToProcess       = @()
    TypesToProcess         = @()
    FormatsToProcess       = @()
    NestedModules          = @()
    FunctionsToExport      = @( 
       'Write-AsciiTable'
    )
    CmdletsToExport        = @()
    VariablesToExport      = @()
    AliasesToExport        = @(
        'watw'
    )
    DscResourcesToExport   = @()
    ModuleList             = @()
    FileList               = @()
    PrivateData            = @{
        PSData = @{
            Tags                       = @('automation', 'ascii', 'table')
            LicenseUrl                 = 'https://choosealicense.com/licenses/mit'
            ProjectUrl                 = 'https://github.com/phellams/asciitableview'
            IconUrl                    = 'https://raw.githubusercontent.com/phellams/phellams-general-resources/main/modules/asciitableview/dist/svg/phdmh-icon-x128.svg'
            ReleaseNotes               = 'https://github.com/phellams/asciitableview'
            Prerelease                 = 'alpha'
            RequireLicenseAcceptance   = $false
            ExternalModuleDependencies = @()
            Docsurl                    = 'https://pages.gitlab.io/phellams/asciitableview'
            MailingListUrl             = 'https://github.com/phellams/asciitableview/issues'
            projectSourceUrl           = 'https://github.com/phellams/asciitableview'
            bugTrackerUrl              = 'https://github.com/phellams/asciitableview/issues'
            Summary                    = 'Powershell Module Dependency Helper'
        }
    }
    HelpInfoURI            = 'https://github.com/phellams/asciitableview/blob/main/README.md'
    DefaultCommandPrefix   = ''
}

