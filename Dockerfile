FROM node:boron
MAINTAINER Aya Shani agayaga2000@gmail.com
#install make
RUN apt-get install --fix-missing --force-yes make
RUN apt-get install --fix-missing --force-yes g++
#clone github project
RUN git clone https://github.com/agayaga/react-testing
WORKDIR /react-testing
RUN npm install 
RUN make
EXPOSE 8000
#run app
ENTRYPOINT ["python","-m","SimpleHTTPServer","8000"]


#docker command 
#docker run -d -p 8000:8000 agayaga/react-testing

#DO NOT DELETE - for debug use
#CMD bash -c 'tail -f /dev/null'

