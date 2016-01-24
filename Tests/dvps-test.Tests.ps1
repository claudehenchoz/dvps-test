Import-Module -Force $PSScriptRoot\..\dvps-test.ps1

Describe 'Remove-StringLatinCharacters' {
    
    Context 'Function' { 

        Set-StrictMode -Version latest
        
        It 'Should return Francois from Wush Washington' {
            Remove-StringLatinCharacters 'François from Wüsh Washington' | Should BeExactly 'Francois from Wush Washington'
        }

    }

}
