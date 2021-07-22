# Get question by ID

The request is used to get a single question from the database by it's id.

| Type | URL | Request | Response |
|------|-----|---------|----------|
| `GET`|`/question/<questionID>`|`<questionID>`|`200 OK`/`404 NOT FOUND`|

## Example

### Request:

`GET` `/question/1`

### Response (will have more information in future):

```
{
    "questionBody": "text",
    "creator": "user1",
    "level": "level1",
    "module": "module2",
    "available": true
}
```

# Add question

The request is used to add a new question.

| Type | URL | Request | Response |
|------|-----|---------|----------|
| `POST`|`/question/`|`JSON object`|`200 OK`/`500 Internal Server Error`|

## Example

### Request:

`POST` `/question/`

#### Request Body

```
{
    "questionBody":"some text",
    "available":true,
    "level":"levelName",
    "module":"moduleName"
}
```

### Response

```
{
    "questionBody": "some text",
    "creator": "userName",
    "level": "levelName",
    "module": "moduleName",
    "available": true
}
```

# Archive question

The request is used to archive the question.

| Type | URL | Request | Response |
|------|-----|---------|----------|
| `DELETE`|`/question/<questionID>`|`<questionID>`|`200 OK`/`404 Not found`|

## Example

### Request:

`DELETE` `/question/1`

### Response:

`200 OK`

# Update question

The request is used to change the question.

| Type | URL | Request | Response |
|------|-----|---------|----------|
| `PUT`|`/question/<questionID>`|`<questionID> and JSON object`|`200 OK`/`404 Not found`|

## Example

### Request:

`PUT` `/question/1`

```
{
"questionBody":"new text to test update",
"level": "levelName",
"module": "moduleName",
"available": false
}
```

non-updatable fields may not be registered

```
{
"questionBody":"new text to test update",
}
```

### Response:

```
{
"questionBody": "new text to test update",
"creator": "userName",
"level": "levelName",
"module": "moduleName",
"available": false
}
```