function! myspacevim#before() abort
    let g:surround_{char2nr("t")} = "{t}\r{/t}"
    
    " vim-php-cs-fixer
    let g:php_cs_fixer_path = "~/bin/php-cs-fixer.phar"
    let g:php_cs_fixer_rules = "@Symfony"

    let @w = "vf'S)i_\<ESC>"

    nnoremap <leader>ws :%s/\s\+$//<cr>:let @/=''<cr>
    nmap <leader>w' vt'S)i_<esc>
    nmap <leader>w" vt"S)i_<esc>
    " nmap <leader>t vf'S)i_<esc>
    nmap <leader>it vitSt
    nnoremap <leader>ff :call PhpCsFixerFixFile()<cr>
endfunction

function! myspacevim#after() abort

endfunction
