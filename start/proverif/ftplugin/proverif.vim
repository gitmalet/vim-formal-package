" Name:        ProVerif
" Author:      Lifepillar <lifepillar@lifepillar.me>
" Maintainer:  Lifepillar <lifepillar@lifepillar.me>
" License:     Vim license (see `:help license`)

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:undo_ftplugin = "setlocal commentstring< formatoptions<"
let b:undo_ftplugin = (exists('b:undo_ftplugin') ? b:undo_ftplugin . '|' : '') . s:undo_ftplugin

setlocal commentstring=(*%s*)
setlocal formatoptions-=2rot
setlocal formatoptions+=cjlq
setlocal suffixesadd=.pv
setlocal omnifunc=syntaxcomplete#Complete

" vim: foldmethod=marker nowrap et ts=2 sw=2

