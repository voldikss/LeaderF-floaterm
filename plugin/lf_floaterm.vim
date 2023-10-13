" ============================================================================
" FileName: leaderf_floaterm.vim
" Author: voldikss <dyzplus@gmail.com>
" GitHub: https://github.com/voldikss
" ============================================================================

let g:Lf_Extensions = get(g:, 'Lf_Extensions', {})
let g:Lf_Extensions.floaterm = {
  \ 'source': string(function('lf_floaterm#source'))[10:-3],
  \ 'accept': string(function('lf_floaterm#accept'))[10:-3],
  \ 'preview': string(function('lf_floaterm#preview'))[10:-3],
  \ }

command! -bar -nargs=0 LeaderfFloaterm Leaderf floaterm
let g:Lf_SelfContent = get(g:,'Lf_SelfContent', {})
let g:Lf_SelfContent['LeaderfFloaterm'] = "floaterm"
