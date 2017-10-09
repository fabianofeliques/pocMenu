
# POC Menu #

Clone the repository.
<br>
Download XAMPP to open the connection with the database(https://www.apachefriends.org/pt_br/download.html).
<br>
Run this line on a MySQL database: "CREATE SCHEMA dbcardapio".
<br>
Run the script contained in the project.
<br>
On the Eclipse tab 'Servers', click on 'Create a New Server', select Tomcat v8.0 Server, add 'pocMenu(projCardapio)' and click 'Finish'.
<br>
Open index.html and "Run on server".

# Comments #

At first the project would be a web application for Candidates and Future Employee Management. Since I had not the opportunity to work with Spring Boot before, I had to study and learn first. Since the application did not require strong entities, I researched and learned that the easiest way would be to work with MongoDB, that I also had not the opportunity to work.
<br>
I planned the initial structure with separated backend and frontend. Backend would consist of Java 8, MongoDB, Spring boot and Spring MVC. The frontend would consist of HTML, CSS, Javascript, AngularJS, Angular Material. I had some difficulties in the structure of the project and it was necessary to make several modifications, since productivity would be low in something that I did not have the opportunity to work and in a short space of time, I decided to remodel a project of mine previously done in the same requirements, but without Spring Boot.
<br>
I have refactored the critical parts of the project for the need to be an English project. The project is an adaptation of a Menu control application, where the client insert, search, update and deletes data. The application is made with HTML, CSS, Bootstrap, JSP, Hibernate and MySQL.

# Final consideration #

Spring Boot: The application would be easier to work with, it would be cleaner, organized and we could work with less efforts with the embedded Tomcat server.
<br>
MongoDB: For a project like this, a NoSQL database like MongoDB makes the productivity better, because you can simply send your object to insert in the database, with less efforts like Hibernate's Notation.
<br>
Gradle: Gradle also contributes to make a cleaner and organized project, without the need of the XML as used with the Maven.
