FROM nginx:latest
MAINTAINER nice
ADD ${WORKSPACE}/dist /usr/share/nginx/html
