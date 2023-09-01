# Use a lightweight web server as the base image
FROM nginx:alpine

# Set the working directory to /app
WORKDIR /usr/share/nginx/html

# Copy the website files into the container
COPY index.html .
COPY portfolio.html .
COPY about.html .
COPY do.html .
COPY contact.html .

# Copy the CSS, JS, and images folders
COPY css ./css
COPY js ./js
COPY images ./images

# Expose port 80 to the outside world
EXPOSE 80

# Command to start the web server
CMD ["nginx", "-g", "daemon off;"]
