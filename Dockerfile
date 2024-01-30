FROM node:20.6-alpine3.18

WORKDIR /app

COPY package.json .
RUN npm i

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev"]