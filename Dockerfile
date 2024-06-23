# Dockerfile
FROM node:14

WORKDIR /app

COPY package.json .
COPY package-lock.json .
RUN npm install

COPY . .

RUN npm run build

CMD ["node", "dist/index.js"]