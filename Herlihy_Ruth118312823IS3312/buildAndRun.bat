@echo off
call mvn clean package
call docker build -t com.mycompany/Herlihy_Ruth118312823IS3312 .
call docker rm -f Herlihy_Ruth118312823IS3312
call docker run -d -p 9080:9080 -p 9443:9443 --name Herlihy_Ruth118312823IS3312 com.mycompany/Herlihy_Ruth118312823IS3312