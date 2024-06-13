# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy the HTML, CSS, and JavaScript files to the appropriate directory
COPY * /usr/share/nginx/html/
#COPY script.js /usr/share/nginx/html/script.js
#COPY style.css /usr/share/nginx/html/style.css

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container has provisioned
CMD ["nginx", "-g", "daemon off;"]

