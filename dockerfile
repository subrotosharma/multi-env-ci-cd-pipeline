FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

#omit dev environment
RUN npm ci --omit=dev

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]
