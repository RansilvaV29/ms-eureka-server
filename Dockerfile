# Imagen base con OpenJDK 17
FROM eclipse-temurin:17-jdk-jammy

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el jar del Eureka Server (ya construido)
COPY target/*.jar eureka-server.jar

# Exponemos el puerto 8761 (puerto típico de Eureka)
EXPOSE 8761

# Variable de entorno para que Spring Boot use el puerto correcto
ENV SERVER_PORT=8761

# Comando para arrancar Eureka
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]
