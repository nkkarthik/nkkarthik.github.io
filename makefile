.PHONY: push

push:
	-git commit -am $@
	git push hub HEAD:master


