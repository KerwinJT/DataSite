# DataSite Technical Interview

## Description
This project uses Java 11 and Spring to implement a simple MVC application. The application has two endpoints to demonstrate inheritance and polymorphism, which will be listed below, and tests to cover the services. Furthermore, this application was developed using Gradle and it will be important to have this installed on your machine.

## Requirements
Gradle 6.8+
Java 11
Terminal (Testing, Running)
IDE (Testing, Running, Debugging)
MySQL
SDKMAN

## MySQL Database
This application is backed by a MySQL database and a sql script is included in the data folder. With MySQL installed on the local machine, the script can be consumed in order to create and populate the Database using the following command:
```
mysql -u {rootUserName} -p < user.sql
```

Running local MySQL server:
```
mysqld
```

Killing the MySQL instance
```
pkill mysqld
```

## Gradle Install - Terminal & SDKMAN
Command:
```
$ sdk install gradle 6.8.3
```


## Gradle Build - Terminal
Command:
```
$ gradle build
```

## Testing - Terminal
Command:
```
$ gradle test --stacktrace
```
**The stacktrace is an important tool in debugging failures. It is included in the command because there is a failing test that is currently commented out. Uncommenting this test will cause the tests to fail and will allow the user to trace the cause. To locate the commented out test, locate the UnregisteredUserServiceMockTest.class inside the project.**


## Running the application
The easiest way to run this application is to open it in an IDE, such as Spring Tool Suite or IntelliJ, and run as a Spring Application. The application can also be ran through a terminal command:
```
gradle bootRun
```

## Stopping application
Command:
```
gradle --stop
```

## Endpints
The two end points can be tested from the browser as they are simple GET Requests. The responses will be in JSON and may render in a single line. Certain browsers allow the user to "beautify" the JSON response with an add-on. Any add-on downloaded to your browser comes with certain risks. Only install these add-ons if you are comfortable with and accept the risks.

**Endpoint to retrieve all users through an ArrayList<Object>()**
```
http://localhost:8080/allusers/getAllAsObject
```

**Enpoint to retrieve all users through an ArrayList<User>()**
```
http://localhost:8080/allusers/getAllAsUser
```
