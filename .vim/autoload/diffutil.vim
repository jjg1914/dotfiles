let s:diff_util_ident = 1

function! DiffUtilGoto(ident)
  for winnr in range(1, winnr("$"))
    if getwinvar(winnr, "diff_util_ident") == a:ident
      exe winnr . "wincmd w"
      return a:ident
    endif
  endfor
  return -1
endfunction

function! DiffUtilIdent()
  if !exists("w:diff_util_ident")
    let w:diff_util_ident = s:diff_util_ident
    let s:diff_util_ident = s:diff_util_ident + 1
  endif
  return w:diff_util_ident
endfunction

function! diffutil#DiffUtil()
  if exists("b:git_dir")
    if &diff
      if exists("w:diff_util_origin")
        let origin = w:diff_util_origin
        q!
        call DiffUtilGoto(origin)
        diffoff
        unlet w:diff_util_destination
      elseif exists("w:diff_util_destination")
        let origin = DiffUtilIdent()
        call DiffUtilGoto(w:diff_util_destination)
        q!
        call DiffUtilGoto(origin)
        diffoff
        unlet w:diff_util_destination
      endif
    else
      let origin = DiffUtilIdent()
      Gdiff
      wincmd k
      let destination = DiffUtilIdent()
      let w:diff_util_origin = origin
      call DiffUtilGoto(origin)
      let w:diff_util_destination = destination
    endif
  endif
endfunction
