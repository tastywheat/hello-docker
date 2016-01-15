cd /tmp

# try to remove the repo if it already exists
rm -rf docker-app; true

git clone git@bitbucket.org:tastywheat/docker-app.git

cd docker-app

npm install

node .