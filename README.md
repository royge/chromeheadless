# chromeheadless

[![Build Status](https://travis-ci.org/royge/chromeheadless.svg?branch=master)](https://travis-ci.org/royge/chromeheadless)

Builds docker image based on Ubuntu 16.04(Xenial) with Chromium browser, Node 8, CURL and GIT.

The primary purpose of the image is to be able to run `karma` for my AngularJS project.

## Getting Started

1. Get the image

    **Option 1:** Pull from docker hub.

    ```
    $ docker pull royge/chromeheadless
    ```

    **Option 2:** Build from source

    ```
    $ git clone https://github.com/royge/chromeheadless.git
    $ cd chromeheadless
    $ docker build -t chromeheadless .
    ```

2. Run the container

    Create `runtests.sh` file.

    ```
    #!/bin/bash

    export CHROME_BIN=chromium-browser
    npm run test-single-run
    ```

    Execute `docker run` command.
    ```
    $ chmod +x runtests.sh
    $ docker run -it -v `pwd`:/app -w=/app royge/chromeheadless ./runtests.sh
    ```
