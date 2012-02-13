" Mustache indent
" Language:	Mustache
" Maintainer:	Juvenn Woo <machese@gmail.com>
" Version:	2
" Last Change:	Jan. 16th 2011

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
  finish
endif

runtime! indent/ruby.vim

unlet! b:did_indent
let b:did_indent = 1

setlocal expandtab
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal autoindent sw=2 et
