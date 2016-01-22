Import-Module -Force $PSScriptRoot\..\dvps-test.ps1

Describe 'Remove-StringLatinCharacters' {
    
    Context 'Strict mode' { 

        Set-StrictMode -Version latest
        
        It 'Should return Francois from Wush Washington' {
            Remove-StringLatinCharacters 'Fran�ois from W�sh Washington' | Should BeExactly 'Francois from Wush Washington'
        }

    }

}
