* build:

```bash
docker build -t docker-flask:0.1 .
```

* run

```bash
docker run -d --name flaskapp --restart=always -p 8091:80 docker-flask:0.1
```

* stop:

```bash
docker stop flaskapp && docker rm flaskapp
```

[博客](http://www.spiderpy.cn/blog/detail/46)

