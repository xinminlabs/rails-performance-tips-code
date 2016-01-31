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
siege -c 10 -t10M "http://localhost:9292/posts/import POST"
```

check performance on newrelic

## Result

### Before

```
   (0.2ms)  BEGIN
  SQL (0.8ms)  INSERT INTO "posts" ("title", "body", "user_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["title", "Autem sequi maxime et ipsam possimus vel adipisci quia.$
], ["body", "Mumblecore iphone loko. Slow-carb actually small batch stumptown. Craft beer artisan pork belly swag cleanse neutra actually bushwick. Truffaut disrupt asymmetrical lumbersexual art party ki$
folk. Direct trade salvia hashtag cold-pressed."], ["user_id", 83], ["created_at", "2016-01-31 12:27:49.796143"], ["updated_at", "2016-01-31 12:27:49.796143"]]
   (1.9ms)  COMMIT
   (0.1ms)  BEGIN
  SQL (0.3ms)  INSERT INTO "posts" ("title", "body", "user_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["title", "Aut iusto consequuntur cum rem."], ["body", "Shoreditch
celiac marfa typewriter crucifix. Fap polaroid raw denim wes anderson scenester. Ethical try-hard umami letterpress vegan polaroid master."], ["user_id", 87], ["created_at", "2016-01-31 12:27:49.803639"]$
 ["updated_at", "2016-01-31 12:27:49.803639"]]
   (0.3ms)  COMMIT
   (0.1ms)  BEGIN
  SQL (0.3ms)  INSERT INTO "posts" ("title", "body", "user_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["title", "Aut a facere nobis qui vel iste beatae eos."], ["body",
"Crucifix occupy trust fund 3 wolf moon mustache echo meditation leggings. Put a bird on it normcore pug wayfarers austin beard. Kombucha leggings craft beer deep v small batch carry venmo ethical. Celiac
 quinoa try-hard lumbersexual aesthetic."], ["user_id", 31], ["created_at", "2016-01-31 12:27:49.805784"], ["updated_at", "2016-01-31 12:27:49.805784"]]
   (0.3ms)  COMMIT
   (0.2ms)  BEGIN
  SQL (0.3ms)  INSERT INTO "posts" ("title", "body", "user_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["title", "Voluptas dolore ea in et magni neque."], ["body", "Taxid
ermy keytar ramps fingerstache etsy. Flannel food truck hammock you probably haven't heard of them. Freegan chia typewriter viral fanny pack poutine plaid park."], ["user_id", 74], ["created_at", "2016-01
-31 12:27:49.807760"], ["updated_at", "2016-01-31 12:27:49.807760"]]
   (0.3ms)  COMMIT
   (0.2ms)  BEGIN
  SQL (0.3ms)  INSERT INTO "posts" ("title", "body", "user_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["title", "Reprehenderit quo modi dolores suscipit ut aperiam."], [
"body", "Salvia intelligentsia trust fund. Drinking pickled readymade chicharrones neutra tacos. Shoreditch brooklyn tousled. Post-ironic keffiyeh cornhole umami gastropub kickstarter fanny pack."], ["use
r_id", 1], ["created_at", "2016-01-31 12:27:49.809756"], ["updated_at", "2016-01-31 12:27:49.809756"]]
   (0.3ms)  COMMIT
   (0.2ms)  BEGIN
  SQL (0.5ms)  INSERT INTO "posts" ("title", "body", "user_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["title", "Quia eum eligendi expedita est dignissimos voluptate ver
o soluta."], ["body", "Tote bag art party vhs mlkshk. Banh mi polaroid cray direct trade. Fixie kitsch normcore hammock. Austin asymmetrical before they sold out polaroid carry heirloom. Photo booth brunc
h offal."], ["user_id", 12], ["created_at", "2016-01-31 12:27:49.811846"], ["updated_at", "2016-01-31 12:27:49.811846"]]
   (1.5ms)  COMMIT
   (0.5ms)  BEGIN
  SQL (0.6ms)  INSERT INTO "posts" ("title", "body", "user_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["title", "Ut impedit consequatur exercitationem rerum omnis iure s
int."], ["body", "Tilde chartreuse fap sriracha art party neutra bespoke cliche. Gluten-free slow-carb hella listicle kickstarter plaid synth. Neutra paleo park waistcoat hashtag banjo. Vinyl direct trade
 actually irony venmo sartorial plaid."], ["user_id", 11], ["created_at", "2016-01-31 12:27:49.818653"], ["updated_at", "2016-01-31 12:27:49.818653"]]
   (0.4ms)  COMMIT
   (0.1ms)  BEGIN
  SQL (0.2ms)  INSERT INTO "posts" ("title", "body", "user_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["title", "Ipsam necessitatibus perspiciatis dolor ea exercitatione
m sit natus."], ["body", "Church-key actually loko. Park roof keytar next level austin sartorial hella church-key. Heirloom pinterest leggings."], ["user_id", 38], ["created_at", "2016-01-31 12:27:49.8217
87"], ["updated_at", "2016-01-31 12:27:49.821787"]]
   (0.2ms)  COMMIT
   (0.1ms)  BEGIN
  SQL (0.2ms)  INSERT INTO "posts" ("title", "body", "user_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["title", "Quis impedit non maiores corrupti autem ea."], ["body",
"Microdosing truffaut direct trade swag mumblecore banh mi. Ethical biodiesel loko. Banjo selfies sriracha lumbersexual distillery lomo. Pitchfork butcher authentic echo 3 wolf moon 90's shabby chic. Dist
illery five dollar toast flannel."], ["user_id", 26], ["created_at", "2016-01-31 12:27:49.823407"], ["updated_at", "2016-01-31 12:27:49.823407"]]
   (0.2ms)  COMMIT
   (0.1ms)  BEGIN
  SQL (0.3ms)  INSERT INTO "posts" ("title", "body", "user_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["title", "Vitae illo libero hic unde."], ["body", "Neutra sriracha
 deep v messenger bag small batch hoodie fanny pack. Food truck hashtag portland brooklyn authentic pug. Intelligentsia tattooed offal viral."], ["user_id", 3], ["created_at", "2016-01-31 12:27:49.824947"
], ["updated_at", "2016-01-31 12:27:49.824947"]]
   (0.2ms)  COMMIT
```

Newrelic response time is 35.4ms.
