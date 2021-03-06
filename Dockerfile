# Container image that runs your code
FROM debian

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY action.sh /action.sh
RUN apt-get update && apt-get install -y python3 && apt-get install -y git python3-pip
# Code file to execute when the docker container starts up (`entrypoint.sh`)
RUN chmod 777 /action.sh
ENTRYPOINT ["/bin/bash","/action.sh"]