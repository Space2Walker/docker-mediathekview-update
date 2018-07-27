# mediathekview-update

A Docker Image that Updates the Mediathekview database

## Getting Started

These instructions will get you a copy of the project up and running on your local machine. 

### Prerequisites

Things you need to install the software

```
Docker
```

### Start It

Start it with your Options

```
sudo docker run --rm -e User=user space2walker/mediathekview-update:latest 
```

The only thing todo is to add a Cron job or something similar with the command above, so it can update the DB frequently


### Options

```
-e User=user
-e Password=123456
-e DB=mysql
-e DB_Name=mediathekview 
-e Host=mysql 
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


