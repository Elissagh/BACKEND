# Utiliser une image contenant Java 17
FROM openjdk:17-jdk-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier JAR généré
COPY target/*.jar app.jar

# Exposer le port 8080 (ou un autre si défini dans application.properties)
EXPOSE 8080

# Démarrer l'application
CMD ["java", "-jar", "app.jar"]
