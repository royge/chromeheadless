build:
	docker build -t chromeheadless:latest .
	docker tag chromeheadless:latest royge/chromeheadless:latest

push:
	docker push royge/chromeheadless:latest

prepare:
	curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 && chmod +x container-structure-test-linux-amd64 && sudo mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test

test:
	container-structure-test test \
		--image chromeheadless:latest \
		--config test-config.yaml
