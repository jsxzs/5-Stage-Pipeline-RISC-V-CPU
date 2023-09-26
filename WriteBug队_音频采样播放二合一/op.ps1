$FileName=Read-Host "Enter Your FileName"
$asm = $FileName + ".asm"
$hex = $FileName + ".hex"
$tmp = $FileName + ".txt"
if (Test-Path $hex) { Remove-Item $hex }
Add-content $hex -Value "v2.0 raw"
java -jar rars_f0c874c.jar $asm dump .text HexText $tmp
Add-content $hex -Value (Get-content $tmp)
Remove-Item $tmp