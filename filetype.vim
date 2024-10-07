" my filetype file
"if exists("did_load_filetypes")
"  finish
"endif

augroup filetypedetect
  "au! BufRead,BufNewFile *.svs,*.svi,*.svr    setfiletype systemverilog
  au! BufRead,BufNewFile *.svs    setfiletype systemverilog
  au! BufRead,BufNewFile *.svi    setfiletype systemverilog
  au! BufRead,BufNewFile *.svr    setfiletype systemverilog
augroup END
