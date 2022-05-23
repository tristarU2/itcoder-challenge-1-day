### сборка образа Docker
```
docker build -t challenge-app .
```

### запуск контейнера
```
docker run --rm --name ITcoder-challenge-app -p 5555:5555 challenge-app
```