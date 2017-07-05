FROM node:boron
MAINTAINER Aya Shani agayaga2000@gmail.com
#install make
RUN apt-get install --fix-missing --force-yes make
RUN apt-get install --fix-missing --force-yes g++
#clone github project
RUN git clone https://github.com/agayaga/react-testing
#WORKDIR /app
WORKDIR /react-testing
RUN npm install 
RUN make
EXPOSE 8000
# run the app
ENTRYPOINT ["python","-m","SimpleHTTPServer","8000"]


#run with - docker run -p 8000:8000 <image>
#DO NOT DELETE - for debug use
#CMD bash -c 'tail -f /dev/null'

