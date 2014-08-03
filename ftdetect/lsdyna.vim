"Dyna input files.
au BufNewFile,BufRead *.k   set filetype=lsdyna
au BufNewFile,BufRead *.key set filetype=lsdyna

"Dyna stdout and stderr outputs.
au BufNewFile,BufRead err* set filetype=err
au BufNewFile,BufRead out* set filetype=out

"Dyna Output ASCII Files
au BufNewFile,BufRead rcforc set filetype=rcforc
au BufNewFile,BufRead d3hsp  set filetype=d3hsp
au BufNewFile,BufRead glstat set filetype=glstat
au BufNewFile,BufRead matsum set filetype=matsum
au BufNewFile,BufRead mes*   set filetype=mes
au BufNewFile,BufRead rbdout set filetype=rbdout
au BufNewFile,BufRead sleout set filetype=sleout
au BufNewFile,BufRead jntforc set filetype=jntforc
au BufNewFile,BufRead spcforc set filetype=spcforc
au BufNewFile,BufRead status.out set filetype=status
