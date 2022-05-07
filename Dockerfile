FROM node:10.15.0

RUN apt update -y && apt install net-tools -y

WORKDIR /usr/src/app

COPY package.json . 

COPY package-lock.json .

RUN ls | grep package

RUN npm install npm@6.4.1

RUN npm install

COPY . . 

WORKDIR /usr/src/app/views

RUN ls | grep package

RUN npm install

WORKDIR /usr/src/app

CMD ["npm", "run", "dev"]
