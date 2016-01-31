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
siege -c 10 -t10M http://localhost:9292/posts
```

check performance on newrelic

checkout after branch to check performacne again.

## Result

### Before

```
SELECT  "posts".* FROM "posts" LIMIT 10
```

Newrelic response time is 4.86ms.

### After

```
SELECT  "posts"."title" FROM "posts" LIMIT 10
```

Newrelic response time is 4.54ms.
