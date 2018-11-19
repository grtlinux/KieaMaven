gs-serving-web-content
======================

- mvn clean install
- mvn package && java -jar target/gs-serving-web-content-XXXX.jar
- mvn clean spring-boot:run
- confirm: http://localhost:8080/
- curl localhost:8080/
- curl localhost:8080/actuator/health
- curl localhost:8080/actuator/shutdown
- curl -X POST localhost:8080/actuator/shutdown
- curl localhost:8080/greeting?name=User
-

References
----------
- [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/ "Serving Web Content with Spring MVC"):
- []( ""):
- []( ""):
- []( ""):
- []( ""):
- []( ""):
- []( ""):
- []( ""):
- []( ""):


.....



