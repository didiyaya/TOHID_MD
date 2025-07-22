FROM node:lts-buster
RUN git clone https://github.com/Tohidkhan6332/TOHID_MD.git
WORKDIR /root/mrtohid
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
EXPOSE 9090
CMD ["npm", "start"]
