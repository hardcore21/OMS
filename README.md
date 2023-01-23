# OMS

___build and deploy___
1) `git clone https://github.com/ypyshuk/oms.git; cd oms`
1) In config file `~/oms/src/main/webapp/WEB-INF/hibernate.cfg.xml` you should change [`hibernate.connection.url`](https://github.com/ypyshuk/oms/blob/main/src/main/webapp/WEB-INF/hibernate.cfg.xml#23) to your local IP
1) `docker-compose up --build`
1) e.g. <http://localhost:8080/OMS/>
