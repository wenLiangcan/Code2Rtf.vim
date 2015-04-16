# Code to RTF

A Vim plugin for copying syntax-highlighted source code to clipboard as RTF (Rich Text Format) text, Windows only.

## Requirements

- Windows
- Vim with `+python` enabled
- [Pygments](http://pygments.org/)
- [PyWin32](http://sourceforge.net/projects/pywin32/)

## Usage

The plugin provides the following command:

```
:C2Rtf
```

A default keyboard shortcut is availabled in both `Normal Mode` and `Visual Mode`:

```
<leader>rt
```

## Settings

### The `g:c2rtf_fontsize` option

This option used to adjust the font size, default is `'24'`.

```vim
let g:c2rtf_fontsize = '24'
```

### The `g:c2rtf_fontface` option

This option used to choose the font family, the plugin lets `Pygments` to choose by itself in default.

```vim
let g:c2rtf_fontface = ''
```

### The `g:c2rtf_style` option

This option used to setup the color scheme provided by `Pygments`, default is `default`.

```vim
let g:c2rtf_style = 'default'
```

## Related Projects

- [vim-copy-as-rtf](https://github.com/zerowidth/vim-copy-as-rtf) (for OS X)
- [rtf-highlight](https://github.com/dharanasoft/rtf-highlight) (for OS X, maybe Linux)