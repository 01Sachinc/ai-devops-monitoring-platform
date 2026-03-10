# Use nginx as the base image
FROM nginx:alpine

# Copy the app files to the nginx html directory
COPY ./app /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
