# chromeheadless

Builds docker image based on Ubuntu 16.04(Xenial) with CURL, Node 8 and GIT.

The primary purpose of the image is to be able to run `karma` for my AngularJS project.

## Getting Started

1. Pull the image

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

    Sample contents of `runtests.sh`
    
    ```
    #!/bin/bash

    export CHROME_BIN=chromium-browser
    npm run test-single-run
    ```
    
    ```
    $ chmod +x runtests.sh
    $ docker run -it -v `pwd`:/app -w=/app chromeheadless ./runtests.sh
    ```
    
    
