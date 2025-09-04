# Use an official nginx image as base
FROM nginx:alpine

# Copy index.html into the default nginx public folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
