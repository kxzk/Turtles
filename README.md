![TMNT](http://i.imgur.com/dQ24EoO.png)


# A colorscheme for Vim inspired by the legendary teenage warriors.



### Screenshots
![python](http://i.imgur.com/bFCw1hs.png)
![javascript](http://i.imgur.com/xeu5egX.png)

### Airline Theme
![airline-n](https://i.imgur.com/zw8kSaw.png)
![airline-n](https://i.imgur.com/dIjbwfq.png)
![airline-n](https://i.imgur.com/hr6yzLa.png)

Contributed by: @Dane456

## Installation

Install manually or use a package manager:

```viml
" vim-plug
Plug 'beigebrucewayne/Turtles'
" NeoBundle
NeoBundle 'beigebrucewayne/Turtles'
" Vundle
Plugin 'beigebrucewayne/Turtles'
```

```viml
colorscheme turtles
```

Copy color to vim...if `~/.vim/colors/` doesn't exist, create folder.
```
 cp ~/.vim/bundle/Turtles/colors/turtles.vim ~/.vim/colors/turtles.vim
```  

Get highlighted parentheses ->
[Rainbow Parens](https://github.com/kien/rainbow_parentheses.vim)

```viml
" set in vimrc/init.vim
augroup RainbowParens
 au!
 au VimEnter * RainbowParenthesesToggle
 au Syntax * RainbowParenthesesLoadRound
 au Syntax * RainbowParenthesesLoadSquare
 au Syntax * RainbowParenthesesLoadBraces
augroup END
```


Inspiration

[monokai](https://github.com/crusoexia/vim-monokai)  
[tender](https://github.com/jacoborus/tender.vim/blob/master/README.md)  
[spacemacs](https://github.com/nashamri/spacemacs-theme)  

