FROM nginx:latest

# Copy the HTML file to nginx
COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8080 (required for Cloud Run)
EXPOSE 8080

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
