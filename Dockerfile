# Use the base Artix base image
FROM artixlinux/openrc

# Update the package repository and install necessary packages
RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm \
        base-devel \
    && rm -rf /var/cache/pacman/pkg/*

# Set the default command to run OpenRC
CMD ["/sbin/init"]
