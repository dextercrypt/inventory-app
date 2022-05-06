FROM node:10.15.0

WORKDIR /usr/src/app

COPY package.json . 

RUN npm install npm@6.4.1

RUN npm install

COPY . . 

WORKDIR /usr/src/app/views

RUN npm install

WORKDIR /usr/src/app

CMD ["npm", "run", "dev"]


