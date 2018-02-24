# auth0-password-grant
CLI Auth0 access tokens.

auth0-password-grant is a command-line tool to quickly provision new Auth0 access tokens using the Resource Owner Password Grant.

```sh
Igrom@foo: ~$ auth0-password-grant -u igrom@example.com -p 123456
eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6InlNR2cwTUllT09NZUdnR3dJd0lpTUlNTWdNd3lwR2dJZ0lpaTRnTUlNRWdJTUNNR2dFd01NIn0gCg==
Igrom@foo: ~$ !! | base64 -d | jq
{
  "typ": "JWT",
  "alg": "RS256",
  "kid: "yMGg0MIeOOMeGgGwIwIiMIMMgMwypGgIgIii4gMIMEgIMCMGgEwMM"
}
```

Provisioning Auth0 access tokens for making manual API calls is a commonly done task. As most tokens soon expire, it is often necessary to provision multiple access tokens in a single session. This tool aims to reduce the tediousness of doing this.

It is possible to pass all required request parameters: **username, password, auth0 domain URL and more** through command-line options, but it is more convenient to save them in a config file that auth0-password-grant reads on execution.

Features:
- store settings for quick token procurement
- prepend token with **"Bearer "** for valid Authorization tokens
- **copy token to clipboard** (if xclip (Linux/X11) or pbcopy (Mac) is installed)
- comprehensive **man** pages

## How to install
Mac OS users (Homebrew):
```sh
brew install jq

brew tap Igrom/tap
brew install auth0-password-grant
```

Linux:
```sh
git clone https://github.com/Igrom/auth0-password-grant.git
cd auth0-password-grant
make install
```

## Recommendations
For common workflows it is recommended to create the following shorthand:

  `alias tok='auth0-password-grant -BX'`

to quickly construct a valid Authorization header and put it in the clipboard.

## Author
Igor Sowinski \<igorsowinski.mail@gmail.com\>

## COPYRIGHT
Copyright © 2018 Igor Sowinski.  Licensed under the 3-clause BSD license.
