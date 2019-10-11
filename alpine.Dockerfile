FROM alpine:3.10.2

# Update apt and  upgrade
RUN apk update && apk upgrade 

#Update python and Pip
RUN apk add --no-cache python && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache

RUN apk add bash py-pip
RUN apk add python-dev 
RUN apk add python2-dev 

# Supporting packages for AZ and AWS CLI
RUN apk add libc-dev
RUN apk add libffi-dev 
RUN apk add gcc 
RUN pip install cffi
RUN apk add musl-dev
RUN apk add linux-headers 
RUN apk add libressl-dev
RUN apk add make

# Install AWS CLI + S3CMD
RUN pip install awscli --upgrade --user
RUN pip install s3cmd --upgrade --user