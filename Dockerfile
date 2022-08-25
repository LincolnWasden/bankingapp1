FROM node:slim

# DEFINING LABEL AND DIRECTORY
LABEL Lincoln <lincolndwasden@gmail.com>
WORKDIR /app

# COPY ITEMS FROM THE ROOT
COPY package.json /app/package.json
COPY index.js     /app/index.js
COPY dal.js       /app/dal.js
# Front End Files
COPY public/index.html        /app/public/index.html 
COPY public/balance.js       /app/public/balance.js
COPY public/context.js        /app/public/context.js
COPY public/createaccount.js  /app/public/createaccount.js
COPY public/deposit.js        /app/public/deposit.js   
COPY public/home.js           /app/public/home.js 
COPY public/index.js          /app/public/index.js  
COPY public/login.js          /app/public/login.js 
COPY public/navbar.js         /app/public/navbar.js  
COPY public/withdraw.js       /app/public/withdraw.js
COPY public/alldata.js       /app/public/alldata.js
COPY public/deleteaccount.js      /app/public/deleteaccount.js
COPY public/logout.js         /app/public/logout.js  
COPY public/savings.js      /app/public/savings.js 
COPY public/userdata.js      /app/public/userdata.js 

# Image Files
COPY /public/bank.png         app/public/bank.png 
COPY /public/blue1.jpeg      app/public/blue1.jpeg

# INSTALLING DEPENDENCIES
RUN npm install
RUN npm install firebase