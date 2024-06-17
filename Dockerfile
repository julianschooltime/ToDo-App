# Verwende ein offizielles Node.js-Image als Basis
FROM node:14

# Installiere notwendige Pakete
RUN apt-get update && apt-get install -y postgresql-client

# Setze das Arbeitsverzeichnis
WORKDIR /usr/src/app

# Kopiere die package.json und package-lock.json (falls vorhanden)
COPY package*.json ./

# Installiere die Abhängigkeiten
RUN npm install

# Kopiere den Rest des Anwendungsquellcodes
COPY . .

# Setze die Umgebungsvariablen für die Datenbankverbindung
ENV DATABASE_URL=postgres://julianschooltime:Pas$1234!@db:5432/todo

# Exponiere den Port, auf dem die Anwendung läuft
EXPOSE 3000

# Starte die Anwendung
CMD ["npm", "start"]
