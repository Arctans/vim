"search word
func Search_Word()
	let w = expand("<cword>")
	exe "vimgrep" w "./**/*.c ./**/*.h"
	exe "copen"
endfunc

func Tags_Serach()
	let w = expand("<cword>")
	exe "ts"  w
"	exe "copen"
endfunc
