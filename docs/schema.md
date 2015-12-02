## <a name="resource-post"></a>Post

FIXME

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when post was created | `"2015-01-01T12:00:00Z"` |
| **id** | *integer* | unique identifier of post | `42` |
| **title** | *string* | unique title of post | `"example"` |
| **updated_at** | *date-time* | when post was updated | `"2015-01-01T12:00:00Z"` |

### Post Create

Create a new post.

```
POST /posts
```


#### Curl Example

```bash
$ curl -n -X POST https://api.hello.com/posts \
  -H "Content-Type: application/json" \
 \
  -d '{
}'
```


#### Response Example

```
HTTP/1.1 201 Created
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": 42,
  "title": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### Post Delete

Delete an existing post.

```
DELETE /posts/{post_id}
```


#### Curl Example

```bash
$ curl -n -X DELETE https://api.hello.com/posts/$POST_ID \
  -H "Content-Type: application/json" \
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": 42,
  "title": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### Post Info

Info for existing post.

```
GET /posts/{post_id}
```


#### Curl Example

```bash
$ curl -n https://api.hello.com/posts/$POST_ID
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": 42,
  "title": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### Post List

List existing posts.

```
GET /posts
```


#### Curl Example

```bash
$ curl -n https://api.hello.com/posts
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
[
  {
    "created_at": "2015-01-01T12:00:00Z",
    "id": 42,
    "title": "example",
    "updated_at": "2015-01-01T12:00:00Z"
  }
]
```

### Post Update

Update an existing post.

```
PATCH /posts/{post_id}
```


#### Curl Example

```bash
$ curl -n -X PATCH https://api.hello.com/posts/$POST_ID \
  -H "Content-Type: application/json" \
 \
  -d '{
}'
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": 42,
  "title": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```


