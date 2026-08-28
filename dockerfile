FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV PORT=3000
EXPOSE 3000
CMD ["sh", "-c", "npx serve -s public -l tcp://0.0.0.0:${PORT}"]