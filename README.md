## Initial setup
(coming today/soon)
## Pulling updates

1. Run `git pull origin <branch>`

2. cd into directory  /home/vagrant dir where `setup.nix` file lives, run `make nix-build` and changes should be merged

3. If there are changes that require migrations, run `sudo nix-shell setup.nix -A develop` in the same dir where `setup.nix` lives, once in the nix-shell cd to the directory where `manage.py` lives, run `python manage.py migrate` then `exit` to leave shell, cd back to directory where `setup.nix` lives, run `make nix-build` again to complete

## JWT /api-token-auth

### Authenticate

#### Request
`curl -X POST -H "Content-Type: application/json" -d '{"username":"<user>","password":"<password>"}' http://localhost:8000/api-token-auth/`

#### Response

`{"token":"<token>"}`


## Support endpoint /support

### Create
`curl -X POST -d '{"name":"<name>","public_key":"<ssh-pub-key>"}' -H "Content-Type: application/json" -H "Authorization: Bearer <token>" http://localhost:8000/support/`
### Delete
(-L flag tells curl to follow redirect)
`curl -X DELETE -H "Content-Tpe: application/json" -H "Authorization: Bearer <token>" http://localhost:8000/support/<id> -Li`
