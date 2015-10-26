## Parametric Dockerfile


This repository contains **Dockerfile** for Parametric Searches of Cenue Project.



### Installation

1. Install [Docker](https://www.docker.com/)

2. docker build -t psearch-cenue .


### Usage

#### Run `Parametric Searches`

    docker run -d -p 8080:8080 psearch-cenue

#### Run `Refresh Content Data`

    docker exec -it "<container id>" /refresh.sh


#### Endpoints

##### Actividades
http://localhost:8080/psearch-indec/acts/select?indent=true&q=*forrajero*
http://localhost:8080/psearch-indec/acts/select?indent=true&q=*

##### Productos y Servicios
http://localhost:8080/psearch-indec/prod/select?indent=true&q=*trigo*
http://localhost:8080/psearch-indec/prod/select?indent=true&q=*

##### Provincias
http://localhost:8080/psearch-indec/prov/select?indent=true&q=*misiones*
http://localhost:8080/psearch-indec/prov/select?indent=true&q=*

##### Distritos
http://localhost:8080/psearch-indec/dept/select?indent=true&q=*Belgrano*Misiones*
http://localhost:8080/psearch-indec/dept/select?indent=true&q=*

##### Gobiernos Locales
http://localhost:8080/psearch-indec/gloc/select?indent=true&q=*Andresito*Belgrano*Misiones*
http://localhost:8080/psearch-indec/gloc/select?indent=true&q=*

##### Otros endpoints disponibles

###### Formas jurídicas
http://localhost:8080/psearch-indec/legf/select?indent=true&q=*sociedad*
http://localhost:8080/psearch-indec/legf/select?indent=true&q=*

###### Tipos de local
http://localhost:8080/psearch-indec/typl/select?indent=true&q=*productivo*
http://localhost:8080/psearch-indec/typl/select?indent=true&q=*

###### Tipos de Nombre
http://localhost:8080/psearch-indec/typn/select?indent=true&q=*fantasia*
http://localhost:8080/psearch-indec/typn/select?indent=true&q=*

