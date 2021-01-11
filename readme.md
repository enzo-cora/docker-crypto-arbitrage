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
$ git@github.com:enzo-cora/front-crypto-arbitrage.git
$ git@github.com:enzo-cora/api-crypto-arbitrage.git
$ make init
$ make dev
```
- remove all images, volumes, containers created by "make dev"
```sh 
$ make reset
```
