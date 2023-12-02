# Use the Arch Linux base image
FROM alpine
# Create a user 'builder' with a home directory
RUN useradd -m -d /home/builder -s /bin/bash builder
RUN apk update -y
RUN apk upgrade -y
RUN apk add sudo -y

# Set the working directory to the user's home directory
WORKDIR /home/builder

# Grant sudo privileges to the 'builder' user without a password prompt
RUN echo 'builder ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Switch to the 'builder' user
USER builder
