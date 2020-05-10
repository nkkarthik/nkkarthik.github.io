.PHONY: clean test build run

build: test
	flutter build web

test: 
	flutter test

run:
	flutter run -d Chrome

clean:
	flutter clean

push:
	git commit -m $@
	git push hub HEAD:master
