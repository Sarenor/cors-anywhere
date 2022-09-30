FROM node:alpine

EXPOSE 80

ENV PORT=8080
ENV CORSANYWHERE_WHITELIST=https://arsnouveau.wiki,http://arsnouveau.wiki,http://arsnouveau.wiki:8080,https://www.arsnouveau.wiki,http://www.arsnouveau.wiki,http://dev.arsnouveau.wiki:8080,,https://dev.arsnouveau.wiki,http://dev.arsnouveau.wiki,http://dev.arsnouveau.wiki:8080

WORKDIR /app

COPY . /app

CMD ["node", "server.js"]