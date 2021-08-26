Import-Module posh-git
Import-Module oh-my-posh

#Set-Theme Material
#$ThemeSettings.PromptSymbols.HomeSymbol = "~"
Set-PoshPrompt -Theme Material

## PSReadLine Module

Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineOption -HistorySearchCursorMovesToEnd