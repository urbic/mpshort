augroup ft_tex
	autocmd!
	imap <C-Y> $$<Left>
	imap <C-Space> ~
	imap <C-@> ~
augroup end

se spl=ru_yo
se spf=src/spell/mpshort.utf-8.add

au FileType {yaml} se expandtab |se ts=2
