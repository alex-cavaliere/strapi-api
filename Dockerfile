# Usa un'immagine base Node.js
FROM node:20

ARG NODE_ENV=production 
ARG NODE_ENV=${NODE_ENV}
# Imposta la directory di lavoro all'interno del container
WORKDIR /usr/src/app

# Copia il file package.json e package-lock.json nella directory di lavoro
COPY package*.json ./
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY src /usr/src/app
# Installa le dipendenze dell'applicazione
RUN npm install

# Copia il resto del codice sorgente nella directory di lavoro
COPY . .

# Esponi la porta su cui l'applicazione è in ascolto (impostata di default a 1337 per Strapi)
EXPOSE 1337

# Comando per avviare l'applicazione
CMD [ "npm", "start" ]
