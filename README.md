# docker-rgeo-test
check that it works

# development
Generally, setting up a development environment can be tricky, what with setting up databases, test areas, etc. and using the same versions of software. Added to this, everyone's computer is slightly different. This is why we use Docker containers. These are standalone virtual Linux instances that, once running, can be accessed from your normal commandline. They can also talk to each other.

# to run
0. have a github account and become a member of https://github.com/pororoca-tech
1. install Docker Desktop
2. This should have made commands available in your commandline. To check, open a terminal and enter:
```sh
docker -v
```
3. The Docker container is defined in Dockerfile. It grabs a pre-canned setup for ruby on Debian Linux, then tries to install a couple of geo libraries. This bit wasn't always working on Foxtrot. Build the Docker container with:
```sh
docker-compose up
```

# Github workflow
It also builds itself on Github Workflow automatically
