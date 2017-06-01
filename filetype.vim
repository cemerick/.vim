if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
    au! BufRead,BufNewFile *.cljx,*.cljs,*.cljc,*.edn setfiletype clojure
    autocmd FileType markdown setlocal spell spelllang=en_us
augroup END

