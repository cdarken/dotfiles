function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

function! myspacevim#before() abort
    let g:surround_{char2nr("t")} = "{t}\r{/t}"
    
    " vim-php-cs-fixer
    let g:php_cs_fixer_path = "~/bin/php-cs-fixer.phar"
    let g:php_cs_fixer_rules = "@Symfony"

    set tags+=tags,tags.vendor

    nnoremap <leader>ws :%s/\s\+$//<cr>:let @/=''<cr>
    nmap <leader>w' vf'S)i_<esc>
    nmap <leader>w" vf"S)i_<esc>
    " nmap <leader>t vf'S)i_<esc>
    nmap <leader>it vitSt

    autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
    autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>   nnoremap <leader>ff :call PhpCsFixerFixFile()<cr>
endfunction

function! myspacevim#after() abort

endfunction
