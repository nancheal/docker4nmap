## 这是什么

run nmap in a docker container

## Finished

- [x] alpine3.8 + nmap7.7

- [x] default nmap-script + nmap-vulners(vulners.com api)

- [x] add "ls /usr/share/nmap/scripts/ | grep xxx" for nmap script local search command

## 怎么用

```
docker run -it --rm nancheal/docker4nmap nmap/searchNse
```

## Todo

- [ ] 精简镜像

- [ ] find bug and fix it