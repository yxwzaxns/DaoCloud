from ubuntu

run apt-get -y  update

run apt-get -y install nodejs npm node nodejs-dbg nodejs-dev nodejs-legacy

run mkdir /app

add . /app

workdir /app

expose 80

run chmod a+x /app/start.sh

run npm install

cmd ['/app/start.sh']
