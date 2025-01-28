FROM nginx:latest

LABEL author="Kirupakaran"

# Set the working directory
WORKDIR /app

# Fixing the RUN command to properly create the default config file
RUN echo '<h1>This is the simple website</h1>' > /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Run nginx in the foreground (corrected "daemon off" syntax)
CMD ["nginx", "-g", "daemon off;"]
