# Use the latest Alpine Linux base image
FROM alpine

# Create a user 'builder' with a home directory
RUN adduser -D -h /home/builder -s /bin/bash builder

# Install sudo package
RUN apk update
RUN apk upgrade
RUN apk add --no-cache sudo

# Grant sudo privileges to the 'builder' user without a password prompt
RUN echo 'builder ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Set the working directory to the user's home directory
WORKDIR /home/builder

# Switch to the 'builder' user
USER builder
