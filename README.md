# vzytoi's nvim config

## install
```
git -C ~/AppData/Local clone https://github.com/vzytoi/nvim
```
```
$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
Get-ChildItem -Recurse -include *.ttf | % { $fonts.CopyHere($_.fullname) }
```
```
:so %|PlugInstall
```

## mapping

Command | Do | Description
--- | --- | ---
<kbd>alt + e</kbd> | ```:call ToggleNERDTreeM()``` | open nerd tree
<kbd>alt + shift + e</kbd> | ```:CtrlP``` | open file finder
<kbd>alt + u</kbd> | ```:UndotreeToggle``` | open undo tree
<kbd>leader + n</kbd> | ```:call ToggleNuRnu()``` | toggle between line numbers and relative lines number
<kbd>alt + g</kbd> | ```:Goyo``` | toggle goyo mode
<kbd>alt + s</kbd> | ```:vnew term://bash``` or ```exit``` | toggle terminal in horizontal split
<kbd>alt + o</kbd> | ```:call ToggleZoom(v:false)``` | toggle hide and show all splits except current one
<kbd>alt + shift + l</kbd> | ```:bn``` | next buffer
<kbd>alt + shift + h</kbd> | ```:bp``` | previous buffer
<kbd>alt + shift + k</kbd> | ```:b#``` | open last buffer
<kbd>alt + b</kbd> | ```:buffers``` | see buffers list
<kbd>alt + shift + b</kbd> | ```:CtrlPBuffer``` | search in buffers list
<kbd>control + h/l</kbd> | ```:call SplitResize()``` | resize current split
<kbd>alt + h</kbd> | <kbd>control + w + W</kdb> | previous split
<kbd>alt + j</kbd> | <kbd>control + w + j</kdb> | next split down
<kbd>alt + k</kbd> | <kbd>control + w + k</kdb> | next split up
<kbd>alt + l</kbd> | <kbd>control + w + w</kdb> | next split
<kbd>tab</kbd> | ```:tabnext``` | next tab
<kbd>shift + tab</kbd> | ```:tabprev``` | previous tab
<kbd>leader + &</kbd> | <kbd>1gt</kbd> | go to tab number 1
<kbd>leader + é</kbd> | <kbd>2gt</kbd> | go to tab number 2
<kbd>leader + "</kbd> | <kbd>3gt</kbd> | go to tab number 3
<kbd>leader + '</kbd> | <kbd>4gt</kbd> | go to tab number 4
<kbd>leader + (</kbd> | <kbd>5gt</kbd> | go to tab number 5
<kbd>leader + -</kbd> | <kbd>6gt</kbd> | go to tab number 6
<kbd>control + k/j</kbd> | ```:m .+2==``` | move current line up or down
<kbd>alt + c</kbd> | ```:call NERDComment(0, "toggle")``` | comment multiples lines
<kbd>leader + s</kbd> | ```:let @/=""``` | clear search
