# Docker file

## Open your terminal

Step 1: Install Docker

Flow Link - https://docs.docker.com/engine/install/ubuntu/

Step 2: Clone git
```
git clone -b devops https://github.com/bjnandi/nwujobs-nwu-final-year-project.git
```
Step 3: Change directory
```
cd nwujobs-nwu-final-year-project
```
Step 4: Update environment variable on Docker file
```
nano Dockerfile
```
Update docker file value. Like mail user name use mailtrap.io credentials
```
ENV APP_DB=nwujobs
ENV APP_DB_USER=biswajit
ENV APP_DB_PASS=abc@1234
ENV DB_FILE=nwujobs.sql

ENV APP_MAIL_USERNAME=use_mail_user_name
ENV APP_MAIL_PASSWORD=use_mail_password

ENV WEB_SERVER=127.0.0.1

ENV GIT_REPO=https://github.com/bjnandi/nwujobs-nwu-final-year-project.git
ENV GIT_BRANCH=main
ENV GIT_APP_FOLDER=.
```
Step 5: Build docker 
```
sudo docker build -t myapp:latest .
```
Step 6: Run docker
```
sudo docker run -p 80:80 -d myapp:latest
```
Step 7: Browser your localhost, IP address or domain to check website (http://nwujobs.bjtechlife.com/)

![Screenshot](nwujobs.bjtechlife.com.jpg)
