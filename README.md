#Setup a media server with one script

This is a script to install sabnzbd, sickbeard, couchpotato, headphones, and plex media server on a server. This will be proxied behind nginx so you can access all the web interfaces through the normal ports (443/80).

To use install Ubuntu 12.10 Server and become root.

````
sudo -i
````
If you have your media on an external drive mount it now. Either way, decide where your media will live.

Install git so we can get the install script.
````
apt-get install git-core
````

Check out the install script.
````
git clone git://github.com/josephmc5/media-server.git
````

Edit the common.yaml file with your data.

Run the install script.
````
./server_init.sh
````
