LetsSport - the listing of sport squares

Запуск с помощью virtualenv:
```
virtualenv -p python3 gosport
cd gosport
source bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

Сборка образа:
```
docker build . -t letsport
```

Вход внутрь контейнера:
```
docker run -ti --entrypoint sh letsport 
```

Запуск с помощью композера:
```
docker-compose up -d
```
