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

## Run tests
```
rspec
```

## Build docs
```
cd docs
bundle exec prmd combine --meta meta.json schemata/ > schema.json
bundle exec prmd verify schema.json
bundle exec prmd doc schema.json > schema.md
cd ..
```
