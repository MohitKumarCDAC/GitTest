# Use the official OpenJDK image from the Docker Hub
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /usr/src/myapp
COPY Add.java .

# Compile the Java program
RUN javac Add.java

# Run the program
CMD ["java", "Add"]
