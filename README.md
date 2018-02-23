auth0-password-grant(1)
=======================


NAME
----
auth0-password-grant - get an Auth0 access token through the password grant


SYNOPSIS
--------
auth0-password-grant [-BX] [-u user_name] [-p password] [-a auth_url] [-c client_id] [-r realm] [-d audience]


DESCRIPTION
-----------
Requests an access token from Auth0 using the Resource Owner Password Grant.

Provisioning Auth0 access tokens for API debugging purposes is a commonly done task. As most tokens soon expire, it is often necessary to provision multiple access tokens in a single session. This tool lets you quickly get an access token from the command line and optionally copy it to clipboard for pasting into another application.

It is possible to pass request parameters through options. If an option isn't present, auth0-password-grant falls back on values specified in a configuration file. An error is raised if any request parameter isn't specified.


OPTIONS
-------
-u user_name
	Specify the username.

-p password
	Specify the password.

-a auth_url
	Specify the Auth0 domain.

-c client_id
	Specify the client ID.

-r realm
	Specify the realm.

-d audience
	Specify the audience.

Other options:

-B	Prepend the token with the string "Bearer ".

-X	If xclip or pbcopy is installed, copy the token to the clipboard.


FILES
-----
~/.config/auth0-password-grant/config
	User-specific configuration file. See auth0-password-grant(5) for further details.


RECOMMENDATIONS
---------------
For common workflows it is recommended to create the following alias:

	alias tok='auth0-password-grant -BX'

to quickly construct a valid Authorization header and put it in the clipboard.


AUTHOR
------
Igor Sowinski <igorsowinski.mail@gmail.com>


COPYRIGHT
---------
Copyright © 2018 Igor Sowinski.  Licensed under the 3-clause BSD license.


SEE ALSO
--------
auth0-password-grant(5)
