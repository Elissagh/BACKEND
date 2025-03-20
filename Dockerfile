# Étape 1: Utiliser une image de base Java
FROM openjdk:17-jdk-slim
# Étape 2: Définir le répertoire de travail
WORKDIR /app

# Étape 3: Copier le fichier JAR généré par Maven/Gradle
COPY target/*.jar app.jar

# Étape 4: Définir la commande pour exécuter l'application
CMD ["java", "-jar", "app.jar"]
