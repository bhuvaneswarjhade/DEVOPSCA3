# Use a base image with a web server installed (e.g., Nginx)
FROM nginx:alpine

# Set the working directory within the container
WORKDIR /usr/share/nginx/html

# Copy the HTML, CSS, and JavaScript files to the container
COPY index.html .
COPY styles.css css/
COPY script.js js/

# Expose port 80 to the outside world
EXPOSE 80

# Command to start the web server when the container starts
CMD ["nginx", "-g", "daemon off;"]
