# docker-mediathekview-update

A Docker Image that Updates the Mediathekview database

## Getting Started

These instructions will get you a copy of the project up and running on your local machine. 

### Prerequisites

What things you need to install the software and how to install them

```
Docker
```

### Installing

Build the Docker Image

```
sudo docker build -t mediathekview-update .
```

And Start it with your Options

```
sudo docker run --rm --link mysql mediathekview_update:latest 
```
## Options

```
* -e User=user
* -e Password=123456
* -e DB=mysql
* -e DB_Name=mediathekview 
* -e Host=mysql 
```

## Built With

* [python:2.7.15-alpine3.8](https://hub.docker.com/_/python/) 
* [ijson](https://github.com/isagalaev/ijson)
* [defusedxml](https://github.com/tiran/defusedxml)
* [mysql-connector==2.1.4](https://github.com/sanpingz/mysql-connector)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* [Mediathekview](https://github.com/mediathekview/plugin.video.mediathekview) 
* [Docker](https://www.docker.com/)


