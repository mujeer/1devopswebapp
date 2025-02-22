# Use the official Tomcat image from the Docker Hub
FROM tomcat:latest

# Remove the default web apps to avoid conflicts (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your .war file to the webapps directory
COPY target/WebApp.war /usr/local/tomcat/webapps/WebApp.war 

# Expose the default Tomcat port (8080)
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
# added