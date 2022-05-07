FROM node:10.15.0

<<<<<<< HEAD
RUN apt update -y && apt install net-tools -y

=======
>>>>>>> master
WORKDIR /usr/src/app

COPY package.json . 

<<<<<<< HEAD
COPY package-lock.json .

RUN ls | grep package

=======
>>>>>>> master
RUN npm install npm@6.4.1

RUN npm install

COPY . . 

WORKDIR /usr/src/app/views

<<<<<<< HEAD
RUN ls | grep package

=======
>>>>>>> master
RUN npm install

WORKDIR /usr/src/app

CMD ["npm", "run", "dev"]


