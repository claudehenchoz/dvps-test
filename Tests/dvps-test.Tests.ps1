Import-Module -Force $PSScriptRoot\..\dvps-test.ps1

Describe 'Remove-StringLatinCharacters' {

    Context 'Function' { 

        It 'Should return Francois from Wush Washington' {
            Remove-StringLatinCharacters 'François from Wüsh Washington' | `
                Should BeExactly 'Francois from Wush Washington'
        }

        It 'Should return Francois from FFFF' {
            Remove-StringLatinCharacters 'FFFF' | Should BeExactly 'FFFF'
        }

    }

}
