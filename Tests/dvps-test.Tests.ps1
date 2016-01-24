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

Describe 'Format-FileSize' {

    Context 'Function' { 

        It '1048576 should return 1024.0 kB' {
            Format-FileSize 1048576 | Should Be '1024.0 kB'
        }

        It '4724464025.6 should return 4.4 GB' {
            Format-FileSize 4724464025.6 | Should Be '4.4 GB'
        }

    }

}
