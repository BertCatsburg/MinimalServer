# Minimal Server
This is a project setting up a very minimal server. 


For now to test Docker implementations, but later we will add some nice stuff.

## Deployment
Although this is only a Minimal Server,
I've added a Deployment directory which you can use to deploy 
this Minimal Server to a docker container. 

### Building Process
In the deployment directory there is a build.sh script. 

This does the following:
 - Create a new build directory
 - CLone this repo in there
 - Add the Dockerfile
 - Run the 'docker compose up' command (not detached)

### Ports
The server is running on port 3030 in the Container
and is mapped to port 3031 on the Host

### Result
Go to your browser on http://localhost:3031 and you'll see 'Hello World!!'  :-)

