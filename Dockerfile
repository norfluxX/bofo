FROM busybox:1.36

# Create web root
WORKDIR /www

# Copy static files
COPY . /www

# Expose HTTP port
EXPOSE 80

# Run BusyBox HTTP server
CMD ["httpd", "-f", "-p", "80", "-h", "/www"]