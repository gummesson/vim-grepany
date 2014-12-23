# grepany

`grepany` finds and runs any grepping tool in Vim and shows the results in
a split window.

The plugin finds the tool by going from the fastest to the slowest (according
to benchmarks):

1. [`git-grep`](http://git-scm.com/docs/git-grep)
2. [`pt`](https://github.com/monochromegane/the_platinum_searcher)
3. [`ag`](http://geoff.greer.fm/ag/)
4. [`ack`](http://beyondgrep.com/)
5. [`grep`](http://www.gnu.org/software/grep/manual/grep.html)

## Installation

[Vundle](https://github.com/gmarik/Vundle.vim):

~~~ viml
Plugin 'gummesson/vim-grepany'
~~~

[NeoBundle](https://github.com/Shougo/neobundle.vim):

~~~ viml
NeoBundle 'gummesson/vim-grepany'
~~~

[vim-plug](https://github.com/junegunn/vim-plug):

~~~ viml
Plug 'gummesson/vim-grepany'
~~~

[Pathogen](https://github.com/tpope/vim-pathogen):

~~~ text
git clone https://github.com/gummesson/vim-grepany ~/.vim/bundle
~~~

## Usage

~~~ text
:Grep[!] [options] {pattern} [{directory}]
~~~

For more commands, usage examples and configuration options, go check out the
[documentation](doc/grepany.txt).

## Mappings

In the quickfix or location-list window, you can use the following mappings:

~~~ text
o       Open file (same as <Enter>).
O       Open file and close |quickfix| or |location-list| window.
go      Preview file (open but maintain focus on the results).
z       Open file and place the result in the middle of the screen.
Z       Open the file, place the result in the middle of the screen and
        close the |quickfix| or |location-list| window.
gz      Preview file and place the result in the middle of the screen.
t       Open in a new tab.
T       Open in new tab silently.
h       Open in horizontal split.
H       Open in horizontal split silently.
v       Open in vertical split.
gv      Open in vertical split silently.
q       Close the |quickfix| or |location-list| window.
~~~

## Acknowledgements

The code base is largely adapted from plugins like
[ack.vim](https://github.com/mileszs/ack.vim) and
[ag.vim](https://github.com/rking/ag.vim).

## License

The MIT License (MIT)

Copyright (c) 2014 Ellen Gummesson

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
