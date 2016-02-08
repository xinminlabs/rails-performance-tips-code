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

checkout after branch and check performance again on newrelic

## Result

### Before

Newrelic response time is 12.2ms.

### After

Newrelic response time is 9.97ms.
