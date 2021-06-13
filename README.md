FZF-Emoji
===============
A super simple emoji insersiont plugin and a shameless copy of
[vim-emoji-complete][] with the usage ot the [gemogi][].

[vim-emoji-complete]:https://github.com/kyuhi/vim-emoji-complete
[gemogi]:https://github.com/github/gemoji

Installation
------------
### Vundle
`Plugin 'gustavospiess/FZF-Emoji'`

### NeoBundle
`NeoBundle 'gustavospiess/FZF-Emoji'`

### vim-plug
`Plug 'gustavospiess/FZF-Emoji'`

### Pathogen
```bash
cd ~/.vim/bundle
git clone https://github.com/gustavospiess/FZF-Emoji.git
```

Configuration
-------------

Add a key mapping of your liking:
```vim
nnoremap <C-e> :FZFEmoji<cr>
inoremap <C-e> <C-o>:FZFEmoji<cr>
```

Add layout configuration as you please:
```vim
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
```

Usage
-----

```vim
:FZFEmoji " to insert an emogi
```

License
-------
The MIT License (MIT)

Copyright (c) 2021 Gustavo Henrique Spiess

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


