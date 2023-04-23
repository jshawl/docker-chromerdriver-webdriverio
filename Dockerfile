FROM node:20

RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get update && apt-get install -y --no-install-recommends \
  ./google-chrome-stable_current_amd64.deb

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm install

COPY . /app/

CMD ["npm", "run", "wdio"]
