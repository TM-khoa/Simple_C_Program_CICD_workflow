# Fetch ubuntu image
FROM ubuntu:24.10

# Install build tools
RUN apt update && \
	apt install -y wget build-essential autoconf automake libtool

# Copy project into image
RUN mkdir /project
COPY src /project/src
COPY tests /project/tests
COPY Makefile /project/Makefile

# Download and build CppUTest
RUN mkdir /project/tools/ && \
	cd /project/ && \
	wget https://github.com/cpputest/cpputest/releases/download/latest-passing-build/cpputest-latest.tar.gz && \
	tar xf cpputest-latest.tar.gz && \
	mv cpputest-latest tools/cpputest/ && \
	cd tools/cpputest/ && \
	autoreconf -i && \
	./configure && \
	make

# Execute script
ENTRYPOINT ["make", "test", "-C", "/project/"]
