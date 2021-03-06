# TEST ENV docker > 3.4 : 
- lauch the test
```sh 
$ make test
```
- remove all images, volumes, containers created by "make test"
```sh 
$ make reset-test
```

# DEV ENV docker > 3.4 : 
- make dev env from project
```sh 
$ git clone git@github.com:enzocorp/front-admin-pannel.git
$ git clone git@github.com:enzocorp/api-filter-symbols.git
$ make init
$ make dev
```
- remove all images, volumes, containers created by "make dev"
```sh 
$ make reset
```

# ENV VARIABLES
### ---Paremetre de connexion sur l'hote---
- HOST_PORT= {number}
- PROXY_HOSTNAME={string}

### ---Site web---
- SITE_HOSTNAME={string} (pour le DNS docker)
- SITE_PORT={number}

### ---Api---
- API_NAME='api1' (nom de l'api qui sera utilisé dans l'url)
- API_PORT={number}
- API_HOSTNAME={string} (pour le DNS docker)
- COINAPI_KEY={string} (clé d'api du site [coinapi](https://www.coinapi.io/Pricing))
- NODE_ENV= "development" | "test" | "production"

### ---Base de données---
- MONGO_HOSTNAME= {string} (pour le DNS docker)
- MONGO_INITDB_ROOT_USERNAME= {string} (user superadmin)
- MONGO_INITDB_ROOT_PASSWORD= {string} (pwd superadmin)
- MONGO_INITDB_USERNAME= {string} (user readwrite)
- MONGO_INITDB_PASSWORD= {string} (pwd user readwrite)
- MONGO_DB= {string}
- MONGO_DB_DEV= {string}
- MONGO_PORT= {number}

### ---Debuger npm---
- DEBUG= "api:*,front:*" | ""  (permet d'activer ou desactiver le debuger du front et de l'api) 
- DEBUG_COLORS=true

