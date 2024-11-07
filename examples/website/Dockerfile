FROM node:22-alpine AS deps

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install


FROM node:22-alpine AS build

WORKDIR /app

COPY . .
COPY --from=deps /app/node_modules ./node_modules

RUN npm run build


FROM nginx:1.25-alpine AS deploy

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80