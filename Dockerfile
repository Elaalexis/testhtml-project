# Use Nginx Alpine for a lightweight web server
FROM nginx:alpine

# Copy the HTML file to Nginx's default serving directory
COPY ays-flowers.html /usr/share/nginx/html/index.html

# Expose port 5000 (internal container port)
EXPOSE 5000

# Configure Nginx to listen on port 5000 instead of default 80
RUN sed -i 's/listen       80;/listen       5000;/g' /etc/nginx/conf.d/default.conf

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
