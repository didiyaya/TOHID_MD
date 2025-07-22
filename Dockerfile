FROM node:lts-buster
RUN git clone https://github.com/Tohidkhan6332/TOHID_MD.git
WORKDIR /TOHID_MD
RUN npm install -g pm2
RUN npm install || yarn install --network-concurrency 1
EXPOSE 9090
CMD ["npm", "start"]
