# Get test by ID 

The query is used to get a single test from the database by its id.

### Type
`GET`

### URL
`/tests/<testID>`

### Request

The query has one parameter in URL:

* `<testID>` -  id of the test you want to get

### Response

If the test with specified id exists, you will get it in JSON format.

Otherwise, you will get `404 Not Found` response.

## Example

### Request:
`GET` `/tests/1`

### Response (will have more information in future):

```
{
"id": 1,
"createdAt": "2021-07-15T23:44:33",
"updatedAt": "2021-07-15T23:47:12",
"startedAt": "2021-07-15T23:44:33",
"finishedAt": "2021-07-15T23:46:20",
"status": "FINISHED",
"evaluation": 9
}
```

# Get all tests (experimental)

The query is used to get all tests from the database.

### Type
`GET`

### URL 
`/tests/`

### Request

The request has no params.

### Response

You will get all tests from the database in JSON format.

## Example
### Request:
`GET` `/tests/`

### Response (will have more information in future):


```
[
{
"id": 1,
"createdAt": "2021-07-15T23:44:33",
"updatedAt": "2021-07-15T23:47:12",
"startedAt": "2021-07-15T23:44:33",
"finishedAt": "2021-07-15T23:46:20",
"status": "FINISHED",
"evaluation": 9
},
{
"id": 7,
"createdAt": "2021-07-17T13:48:09",
"updatedAt": null,
"startedAt": null,
"finishedAt": null,
"status": "NOT_STARTED",
"evaluation": 0
}
]
```
# Assign test (to be updated)

The query is used to assign a test for the user (HR's ability).

### Type
`POST`

### URL
`/tests/assign/<userID>`

### Request

The query has one parameter in URL:

* `<userID>` -  id of the user you want to assign test

### Response

If the user exists, you will get id of the created test.

Otherwise, you will get `404 Not Found` response

## Example
### Request:
`POST` `/assign/1`

### Response:

`9`

# Start not assigned test (to be updated)

The request is used when the user wants to learn one's level by oneself (without any HRs).

### Type
`POST`

### URL
`/tests/start`

### Request

The query has no params.

### Response

You will get id of the created test.

## Example
### Request:
`POST` `/start`

### Response:

`10`

# Start assigned test

The request is used when the user starts test which was assigned by an HR.

### Type
`POST`

### URL
`/tests/start/<testID>`

### Request

The query has one parameter in URL:

* `<testID>` -  id of the test to start

### Response

If the test exists, you will get `200 OK` response.

Otherwise, you will get `404 Not Found` response

## Example
### Request:
`POST` `/start/1`

# Finish test

The request is used to finish tests.

### Type
`POST`

### URL
`/tests/finish/<testID>`

### Request

The query has one parameter in URL (`<testID>`) and one in request body (`evaluation`):

* `<testID>` -  id of the test to finish

* `evaluation` - score for the first two modules (grammar and listening)

### Response

If the test exists, you will get `200 OK` response.

Otherwise, you will get `404 Not Found` response

## Example
### Request:
`POST` `/finish/1`

`evaluation`: `20`

# Update test
The request is used to update score after coach check.

### Type
`PUT`

### URL
`/tests/<testID>`

### Request

The query has one parameter in URL (`<testID>`) and one in request body (`evaluation`):

* `<testID>` -  id of the test to update

* `evaluation` - score after coach check (score for the whole test)

### Response

If the test exists, you will get `200 OK` response.

Otherwise, you will get `404 Not Found` response

## Example
### Request:
`PUT` `/tests/1`

`evaluation`: `40`

# Remove test by ID (experimental)

The query is used to remove a test from the database

### Type
`DELETE`

### URL
`/tests/<testID>`

### Request

The query has one parameter in URL:

* `<testID>` -  id of the test to remove

### Response

If the test exists, you will get `200 OK` response.

Otherwise, you will get `404 Not Found` response

## Example
### Request:
`DELETE` `/tests/1`