# MAINTAINER s.mueller@ucl.ac.uk
# Pull base image
FROM ubuntu:16.04

# set environmental variables
ENV PLINK_VERSION   20190326
ENV PLINK_HOME      /usr/local/usr
ENV PATH            $PLINK_HOME:$PATH

# install plink
# WARNING: no static download link available, links to older version routinely removed
# might be necessary to update PLINK_VERSION for error-free build
RUN apt-get update && \
    apt-get install -y unzip wget && \
    wget http://s3.amazonaws.com/plink2-assets/plink2_linux_x86_64_${PLINK_VERSION}.zip && \
    unzip plink2_linux_x86_64_${PLINK_VERSION}.zip -d $PLINK_HOME && \
    rm plink2_linux_x86_64_${PLINK_VERSION}.zip && \
    apt-get autoremove
