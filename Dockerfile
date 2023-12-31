FROM node:16.17.0
USER node
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
ENV PORT 8001
EXPOSE $PORT