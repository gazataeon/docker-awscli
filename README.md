# docker-awscli
Docker Containers with AWS CLI

Two simple containers for AWS and S3 CLI commands.

Both should work fine, but the Ubuntu image is there for those of you who like big packages. ( ͡☉ ͜ʖ ͡☉)

Run examples:

`docker run --env AWS_ACCESS_KEY_ID="L000000LN0" \
--env AWS_SECRET_ACCESS_KEY="zzzZZZzzzZZZ+DSDWDDdd" \
gazataeon/awscli:ubuntu-18.04`

or

`docker run --env AWS_ACCESS_KEY_ID="L000000LN0" \
--env AWS_SECRET_ACCESS_KEY="zzzZZZzzzZZZ+DSDWDDdd" \
gazataeon/awscli:alpine-3.10.2`

