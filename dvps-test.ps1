function Remove-StringLatinCharacters {
    Param([string]$String)
    [Text.Encoding]::ASCII.GetString(
        [Text.Encoding]::GetEncoding("Cyrillic").GetBytes($String)
    )
}
