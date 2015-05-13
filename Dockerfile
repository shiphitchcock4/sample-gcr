FROM gcr.io/gcr_project_id/image_name

COPY . /src

RUN  apt-get install -y curl
RUN  curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN  apt-get install -y nodejs
RUN  cd /src; npm install

CMD ["node", "/src/index.js"]

EXPOSE  8080
