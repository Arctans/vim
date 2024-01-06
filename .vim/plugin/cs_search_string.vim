"cs search word
func CS_Search_Word()
	let w = expand("<cword>")
	exe "cs f s" w
	exe "copen"
endfunc

" find the define
func CS_Search_define()
	let w = expand("<cword>")
	exe "cs f g" w
	exe "copen"
endfunc

" find call what funcs 
func CS_Search_whatfunc()
	let w = expand("<cword>")
	exe "cs f d" w
endfunc

" find called func
func CS_Search_calledfunc()
	let w = expand("<cword>")
	exe "cs f c" w
endfunc


" find where file the func is
func CS_Search_funcfiles()
	let w = expand("<cword>")
	exe "cs f i" w
endfunc
