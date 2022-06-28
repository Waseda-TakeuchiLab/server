# Server Management
This repo shows how to manage servers in Takeuchi Lab.


The supported OS:

- Ubuntu Server 20.04 LTS
- Ubuntu Server 22.04 LTS


## Set up a server

### Clone the repo
```sh
$ git clone https://github.com/Waseda-TakeuchiLab/server
$ cd server
```

### Run the setup script
```sh
$ sudo bash setup.sh
```


## Set up a proxy

All you need is set environment variables: `http_proxy`, `https_proxy`, `HTTP_PROXY`, and `HTTPS_PROXY`.

```sh
$ export http_proxy=http://www-proxy.waseda.jp:8080
$ export https_proxy=$http_proxy
$ export HTTP_PROXY=$http_proxy
$ export HTTPS_PROXY=$http_proxy
```
