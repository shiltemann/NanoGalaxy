paper:
	latexmk -xelatex main.tex

view:
	okular main.pdf &

watch:
	while inotifywait -r -e modify --exclude  '(\.git/.*|.*(\.swp|\.swo|\.swn|\.fdb_latexmk|~))'  . ; do $(MAKE) paper; done


clean:
	latexmk -c
