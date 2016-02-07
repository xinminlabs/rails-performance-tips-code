# README

setup database

```
rake db:create db:migrate db:seed
```

add config/newrelic.yml

start server

```
puma -e production
```

run siege to test performance

```
siege -c 10 -t10M http://localhost:9292/comments
```

check performance on newrelic

## Result

### Before

Newrelic response time is 6.28ms.

### After

Newrelic response time is 5.76ms.
