# Use the official Nginx Alpine image for a lightweight web server
FROM nginx:alpine

# Copy the website files to the default Nginx public directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
