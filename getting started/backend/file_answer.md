# Get file answer by ID

The request is used to get a file answer from the database by its id

Type | Url | Request | Response
---- | --- | ------- | --------
`GET` | `/file_answer/<fileAnswerID>`| `<fileAnswerID>` | `200 OK`/`404 NOT FOUND`

## Example

### Request

`GET` `/file_answer/1`

### Response(will have more information in future)

```
{
"id": 1,
"question": "question1",
"url": "url"
}
```

# Create file answer

The request is used to create a file answer in the database

Type | Url | Request | Response
---- | --- | ------- | --------
`POST` | `/file_answer/`| `JSON-object` | `200 OK`/`404 NOT FOUND`

## Example

### Request

`POST` `/file_answer/`

#### Request Body

```
{
"url": "url2",
"questionId": 1
}
```

### Response(will have more information in future)

`200 OK`

# Update file answer (experimental)

The request is used to change a file answer in the database

Type | Url | Request | Response
---- | --- | ------- | --------
`PUT` | `/file_answer/<fileAnswerID>`| `<fileAnswerID>`, `JSON-object` | `200 OK`/`404 NOT FOUND`

## Example

### Request

`PUT` `/file_answer/1`

### Request Body

```
{
"url": "url1",
"questionId": 1
}
```

### Response(will have more information in future)

`200 OK`

# Remove file answer by id (experimental)

The request is used to remove a file answer from the database

Type | Url | Request | Response
---- | --- | ------- | --------
`DELETE` | `/file_answer/<fileAnswerID>`| `<fileAnswerID>` | `200 OK`/`404 NOT FOUND`

## Example

### Request

`DELETE` `/file_answer/1`

### Response

`200 OK`