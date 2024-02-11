# mbentley/rsyslog

docker image for rsyslog
based off of alpine:latest

To pull this image:
`docker pull mbentley/rsyslog`

Example usage, binding to all IPs on the docker host:
`docker run -d -p 514:514 -p 514:514/udp --name rsyslog mbentley/rsyslog`
