## Initial setup


## JWT /api-token-auth

###Authenticate

####Request
`curl -X POST -H "Content-Type: application/json" -d '{"username":"<user>","password":"<password>"}' http://localhost:8000/api-token-auth/`

####Response

`{"token":"<token>"}`


##Support endpoint /support

###Create
curl -X POST -d '{"name":"<name>","public_key":"<ssh-pub-key>"}' -H "Content-Type: application/json" -H "Authorization: Bearer <token>" http://localhost:8000/support/
###Delete
(-L flag tells curl to follow redirect)
`curl -X DELETE -H "Content-Tpe: application/json" -H "Authorization: Bearer <token>" http://localhost:8000/support/<id> -Li`
