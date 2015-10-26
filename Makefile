#eulerorg:
#	emacs -Q -batch -l bin/org-publish.el -f publish-to-public-html

github:
	# ipython nbconvert euler.ipynb --to slides
	ipython nbconvert euler.ipynb --to html


