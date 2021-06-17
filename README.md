# content vzytoi's nvim config

## install
```
git -C ~/AppData/Local clone https://github.com/vzytoi/nvim.configuration nvim
```
```
$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
Get-ChildItem -Recurse -include *.ttf | % { $fonts.CopyHere($_.fullname) }
```
```
nvim +PlugInstall +qa! now --headless
```
