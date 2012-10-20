# Puppet module for installing dropbox

Install dropbox:

````
include dropbox
````

Install dropbox and automatically link it to your account:

````
class { 'dropbox::config':
	user     => 'user@example.com',
	password => 'password'
}
include dropbox
````
