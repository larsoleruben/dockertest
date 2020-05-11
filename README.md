# Very basic docker test

## What is in this test

1. There is a very simple docker file pulling the latest docker:3 image from docker hub
2. There is a "hello world" python script, which uses an environment variable, defined in the docker file
3. The docker file adds a user, so we do not run as root.

## How to test the candidate
1. remove the lines, but show there is missing a line here
2. Tell the candiate to containerize the simple python script with the enclosed docker file and to build the image with a tag, i.e "evil-test-app:1.0.0"
3. Ask the candidate to run the container interactively and make sure the container is deleted after it has stopped
4. Ask the candidate to check if the container is really stopped and deleted
5. Optional, as why we make a user in the docker file


## Necessary commands
1. Task number 2 above: ```docker build -t evil-test-app:1.0.0 .```
2. Task number 3: ```docker run -it --rm --name test-running-app evil-test-app:1.0.0```
3. Task number 4: ```docker container ls -a``` 
4. Task number 5: To enhance security. Docker uses root as default, and we limit the attack surface significatly by using a normal user.
