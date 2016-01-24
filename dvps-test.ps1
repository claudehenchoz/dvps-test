function Remove-StringLatinCharacters {
    Param([string]$String)
    [Text.Encoding]::ASCII.GetString(
        [Text.Encoding]::GetEncoding("Cyrillic").GetBytes($String)
    )
}

function Format-FileSize {
    Param([Parameter(Mandatory=$true)][long]$Size)
    if (!$Size) { throw 'No size specified' }
    If     ($Size -gt 1TB) {[string]::Format("{0:0.0} TB", $Size / 1TB)}
    ElseIf ($Size -gt 1GB) {[string]::Format("{0:0.0} GB", $Size / 1GB)}
    ElseIf ($Size -gt 1MB) {[string]::Format("{0:0.0} MB", $Size / 1MB)}
    ElseIf ($Size -gt 1KB) {[string]::Format("{0:0.0} kB", $Size / 1KB)}
    ElseIf ($Size -gt 0)   {[string]::Format("{0:0.0} B", $Size)}
    Else                   {""}
}
