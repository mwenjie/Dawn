# Use the official Ghost Docker image
FROM ghost:5-alpine

# Copy the theme files into the Ghost themes directory
COPY --chown=node:node . /var/lib/ghost/content/themes/dawn

# Set the working directory
WORKDIR /var/lib/ghost

# Expose Ghost port
EXPOSE 2368

# The official Ghost image already has the correct entrypoint
# Ghost will start automatically
