FROM phusion/baseimage:0.9.16
CMD ["/sbin/my_init"]

MAINTAINER Leigh McCulloch

# Upload Unison for building
COPY container /

# Allow setting these on build
ARG UNISON_VERSION=${UNISON_VERSION}
ARG OCAML_VERSION=${OCAML_VERSION}

# Build and install Unison versions then cleanup
RUN apt-get update
RUN curl -LO http://download.opensuse.org/repositories/home:ocaml/xUbuntu_14.04/Release.key
RUN apt-key add - < Release.key
RUN apt-get update
RUN dependencies-install.sh
RUN unison-install.sh
RUN dependencies-purge.sh
RUN rm -rf /var/lib/{apt,dpkg,cache,log}/ /tmp/* /var/tmp/*

# Set default Unison configuration
ENV UNISON_WORKING_DIR=/unison

# Set working directory to be the home directory
WORKDIR /root

# Setup unison to run as a service
VOLUME $UNISON_WORKING_DIR
EXPOSE 5000
