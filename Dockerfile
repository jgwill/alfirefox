#FROM ubuntu:20.04
FROM jgwill/algnome
RUN apk update
RUN apk add  firefox
CMD /usr/bin/firefox