FROM node:latest

WORKDIR /app

COPY ./package.json ./package-lock.json ./

RUN npm install --only=production

COPY . .

WORKDIR /app/client

RUN npm install --only=production

RUN npm run build

EXPOSE 4000

WORKDIR /app

CMD ["npm","start"]


