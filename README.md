# docker-mediathekview-update
A Docker Image that Updates the Mediathekview database


sudo docker build -t mediathekview-update .




sudo docker run --rm --link mysql mediathekview_update:latest 

Options
-e User=user
-e Password=123456
-e DB=mysql
-e DB_Name=mediathekview 
-e Host=mysql 

