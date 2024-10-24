# Usa Amazon Corretto JDK 17 con Alpine como base
FROM amazoncorretto:17-alpine-jdk

# Establecer variables de entorno para la base de datos
ENV SPRING_DATASOURCE_URLjdbc:mysql://localhost:3306/docker_db
ENV SPRING_DATASOURCE_USERNAME=root
ENV SPRING_DATASOURCE_PASSWORD=

# Copia el archivo .jar generado en la carpeta target
COPY target/SpringWithDocker-0.0.1-SNAPSHOT.jar /api-v1.jar

# Exponer el puerto 8080 para que la aplicación sea accesible
EXPOSE 8080

# Ejecutar el JAR de la aplicación
ENTRYPOINT ["java", "-jar", "/api-v1.jar"]
