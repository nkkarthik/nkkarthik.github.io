.PHONY: clean test build run

build: test
	flutter build web


drivers:
	wget https://chromedriver.storage.googleapis.com/83.0.4103.39/chromedriver_linux64.zip
	wget https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz

geckodriver:
	${HOME}/geckodriver --port=4444

#export VM_SERVICE_URL=http://127.0.0.1:8888
export VM_SERVICE_URL=http://127.0.0.1:33199
test: gen
	dart test_driver/pages_test.dart
	#flutter drive --target=test_driver/pages.dart --browser-name=firefox --profile
	#flutter test

gen:
	flutter packages pub run build_runner build

run:
	flutter run -d Chrome --observatory-port 8888 --disable-service-auth-codes

clean:
	flutter clean

push:
	-git commit -m $@
	git push hub HEAD:master


