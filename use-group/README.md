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

## Result

### Before

```
  Post Load (0.4ms)  SELECT  "posts".* FROM "posts" LIMIT 10
   (25.0ms)  SELECT AVG("comments"."rating") FROM "comments" WHERE "comments"."post_id" = $1 AND "comments"."approved" = $2  [["post_id", 1], ["approved", "t"]]
   (1.0ms)  SELECT AVG("comments"."rating") FROM "comments" WHERE "comments"."post_id" = $1 AND "comments"."approved" = $2  [["post_id", 2], ["approved", "t"]]
   (0.7ms)  SELECT AVG("comments"."rating") FROM "comments" WHERE "comments"."post_id" = $1 AND "comments"."approved" = $2  [["post_id", 3], ["approved", "t"]]
   (0.7ms)  SELECT AVG("comments"."rating") FROM "comments" WHERE "comments"."post_id" = $1 AND "comments"."approved" = $2  [["post_id", 4], ["approved", "t"]]
   (0.7ms)  SELECT AVG("comments"."rating") FROM "comments" WHERE "comments"."post_id" = $1 AND "comments"."approved" = $2  [["post_id", 5], ["approved", "t"]]
   (0.7ms)  SELECT AVG("comments"."rating") FROM "comments" WHERE "comments"."post_id" = $1 AND "comments"."approved" = $2  [["post_id", 6], ["approved", "t"]]
   (0.6ms)  SELECT AVG("comments"."rating") FROM "comments" WHERE "comments"."post_id" = $1 AND "comments"."approved" = $2  [["post_id", 7], ["approved", "t"]]
   (0.6ms)  SELECT AVG("comments"."rating") FROM "comments" WHERE "comments"."post_id" = $1 AND "comments"."approved" = $2  [["post_id", 8], ["approved", "t"]]
   (0.5ms)  SELECT AVG("comments"."rating") FROM "comments" WHERE "comments"."post_id" = $1 AND "comments"."approved" = $2  [["post_id", 9], ["approved", "t"]]
   (0.5ms)  SELECT AVG("comments"."rating") FROM "comments" WHERE "comments"."post_id" = $1 AND "comments"."approved" = $2  [["post_id", 10], ["approved", "t"]]
```

Newrelic response time is 17.7ms.
