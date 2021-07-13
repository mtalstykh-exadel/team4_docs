# Requests URL

The current version of the server is deployed at

**[https://untitled-testing-system.herokuapp.com]()**


# Authentication

### Request

`/login` endpoint is used for the authentication request.

You should make **POST** request with body, containing JSON object with
user's credentials:

* `"login"` field contains a string with **login** (username).
* `"password"` field contains a string with **password**.


### Response

If the credentials, provided in the request's body, are correct, you'll get
a response with a single string: 
* **JWT token**.

Otherwise, you'll get `401 Unauthorized` response.


## Authentication example

For testing the responses, database contains test user's credentials:
* Name: `Test User`
* Login: `test_user`
* Password: `password`

So, you can check authentication with the following body in POST request:
```
{
    "login": "test_user",
    "password": "password"
}
```

Response should look like this:
```
eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0ZXN0X3VzZXIiLCJpYXQiOjE2MjYxNzY2ODgsImV4cCI6MTYyNjIxMjY4OH0.YJUsNx3nMVEBjn9MslMZzk7Httm7IblLDf_NApm2kbo
```


# JWT Token

After authentication request, you receive JWT token, associated with the user.
All requests, except authentication, should be provided with
**authorization token** in the header.

All the requests should contain the following **header**:

|       KEY       |        VALUE         |
|-----------------|----------------------|
| `Authorization` | `Bearer <JWT_token>` |

Replace `<JWT_token>` with the string you got from the authentication response.


# Get name

### Request

`/name` endpoint is used to get user's name.

You should make **GET** request. Don't forget to provide **authorization token**
in the request's header.

### Response

If the JWT token is correct, you'll get a response with a single string:
* **User's name**

Otherwise, you'll get `403 Forbidden` response.
