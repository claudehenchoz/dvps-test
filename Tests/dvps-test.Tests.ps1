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

        It 'Should return 1024.0 kB for 1048576' {
            Format-FileSize 1048576 | Should Be '1024.0 kB'
        }

        It 'Should return 4.4 GB for 4724464025.6' {
            Format-FileSize 4724464025.6 | Should Be '4.4 GB'
        }

        It 'Should return 0.0 B for 0' {
            Format-FileSize 0 | Should Be '0.0 B'
        }

        It 'Should throw on negative values' {
            { Format-FileSize -2 } | Should throw
        }

    }

}
