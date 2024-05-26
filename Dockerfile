# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Compile the Java application
RUN javac src/main/java/HelloWorld.java

# Specify the command to run your app
CMD ["java", "-cp", "src/main/java", "HelloWorld"]
