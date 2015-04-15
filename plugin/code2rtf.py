import os

from pygments import highlight
from pygments.formatters import RtfFormatter
from pygments.lexers import get_lexer_by_name

import vim
import win32clipboard


def copy(text):
    CF_RTF = win32clipboard.RegisterClipboardFormat('Rich Text Format')
    win32clipboard.OpenClipboard(0)
    win32clipboard.EmptyClipboard()
    win32clipboard.SetClipboardData(CF_RTF, text)
    win32clipboard.SetClipboardData(win32clipboard.CF_UNICODETEXT,
                                    unicode(text))
    win32clipboard.CloseClipboard()


start_line = int(vim.eval('a:line1')) - 1
end_line = int(vim.eval('a:line2'))

encoding = vim.eval('&encoding')
code = os.linesep.join(vim.current.buffer[start_line:end_line])
filetype = vim.eval('&filetype')

lexer = get_lexer_by_name(filetype, stripall=True)
formatter = RtfFormatter()
result = highlight(code, lexer, formatter).encode(encoding)
copy(result)

