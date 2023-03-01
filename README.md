# docker-rgeo-test

check that it works

## description

This is the very minimum required to check that RGeo works on Docker.
The results aren't terribly thrilling, but it makes this a good project to test a new developer setup.

## development

Generally, setting up a development environment can be tricky, what with setting up databases, test areas, etc. and using the same versions of software. Added to this, everyone's computer is slightly different. This is why we use Docker containers. These are standalone virtual Linux instances that, once running, can be accessed from your normal commandline. They can also talk to each other.

## to run

0. have a github account and become a member of https://github.com/pororoca-tech
1. install Docker Desktop
2. This should have made commands available in your commandline. To check, open a terminal and enter:
```sh
docker -v
```
3. install GitHub Desktop
4. install Visual Studio Code
5. at the top of this github page there should be a green dropdown button called 'Code'
6. click it, then 'Open with GitHub Desktop'
7. **alert!** if you are on Windows, **do not** save your projects under a User folder that has spaces in. You will need to create a location somewhere else.
8. from Github Desktop, with the current repository set to this one, in the right-hand panel, click 'Open in Visual Studio Code' (If you don't have this option then check preferences/integrations)
9. From the Terminal menu, select 'New Terminal'
10. The Docker container is defined in Dockerfile. It grabs a pre-canned setup for ruby on Debian Linux, then tries to install a couple of geo libraries. This bit wasn't always working on Foxtrot. Build the Docker container with:
```sh
docker-compose up
```

A successful run should say:
```sh
[+] Running 2/2
 ⠿ Network docker-rgeo-test_default     Created                                        0.1s
 ⠿ Container docker-rgeo-test-tester-1  Creat...                                       0.1s
Attaching to docker-rgeo-test-tester-1
docker-rgeo-test-tester-1  | Building native extensions. This could take a while...
docker-rgeo-test-tester-1  | Successfully installed rgeo-3.0.0
docker-rgeo-test-tester-1  | Successfully installed rgeo-geojson-2.1.1
docker-rgeo-test-tester-1  | 2 gems installed
docker-rgeo-test-tester-1  | hello world of CAPI
docker-rgeo-test-tester-1 exited with code 0
```

## Github workflow
It also builds itself on Github Workflow automatically
