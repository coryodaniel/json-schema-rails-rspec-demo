prmd, json schema 4, committee, rails and rspec demo

* Can 'lists' return a root key w/ the instances under it?
  ```json
    "posts": [{}]
  ```
* Can 'lists' return a meta key?
* strictProperties vs required vs additionalProperties
  * https://github.com/fge/json-schema-validator/wiki/v5:-strictProperties
  * add in content
  * required on GET vs POST, etc?
* Using the schemata files, we dont have to recombine the schema might be nicer to do that so Guard can watch those json files...
* Make some nice rspec matchers for all that jazz in posts_requests_spec.rb

## Build docs & combine schema
```
cd docs
bundle exec prmd combine --meta meta.json schemata/ > schema.json
bundle exec prmd verify schema.json
bundle exec prmd doc schema.json > schema.md
cd ..
```

## Run tests
```
rspec
```
