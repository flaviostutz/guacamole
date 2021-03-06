# guacamole

Guacamole VNC RDP SSH html client

## Usage

* Create a docker-compose.yml file

```yml
version: '3.5'

services:

  guacamole:
    image: flaviostutz/guacamole
    ports:
      - "8080:8080"
    environment:
      - POSTGRES_HOSTNAME=guacamole-postgres
      - POSTGRES_DATABASE=guacamole
      - POSTGRES_USER=guacamole
      - POSTGRES_PASSWORD=guacamole123
      - GUACD_HOSTNAME=guacamole-ccd
    restart: always

  guacamole-postgres:
    image: flaviostutz/guacamole-postgres:1.1.0
    ports:
      - "5432:5432"
    environment:
      - POSTGRES_DB=guacamole
      - POSTGRES_USER=guacamole
      - POSTGRES_PASSWORD=guacamole123
    restart: always

  guacamole-ccd:
    image: guacamole/guacd:1.1.0
    ports:
      - "4822:4822"
    restart: always

```

* Run ```docker-compose up```

* Open browser at http://localhost:8080/guacamole

* Use user/login guacadmin/guacadmin

