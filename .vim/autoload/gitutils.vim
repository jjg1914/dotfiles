function! gitutils#gitAddNERD(node)
  exec "silent Git add " . a:node.path.str({ 'format': 'Edit' })
  call b:NERDTreeRoot.refresh()
  call b:NERDTree.render()
endfunction

function! gitutils#gitResetNERD(node)
  exec "silent Git reset " . a:node.path.str({ 'format': 'Edit' })
  call b:NERDTreeRoot.refresh()
  call b:NERDTree.render()
endfunction

function gitutils#gitRmNERD(node)
  exec "silent Git rm -rf " . a:node.path.str({ 'format': 'Edit' })
  call b:NERDTreeRoot.refresh()
  call b:NERDTree.render()
endfunction
