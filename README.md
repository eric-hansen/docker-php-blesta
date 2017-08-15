# docker-php-blesta

A Docker for [Blesta](https://www.blesta.com).

## How To Use

* Install [Docker](https://www.docker.com) for your system
* Run `docker build .` inside of this directory
* Run `docker container start <container ID/hash>`
* Open up `http://<container IP>/blesta` in your browser

## Notes

* This is basically a bare-bones build file.  Some pieces might be missing for you specifically.
* While running on PHP 7 is possible with Blesta 4.0, I created this for personal use (but felt like sharing it).
* I wish I could use the Alpine build, but there's known issues with ionCube Loader and Alpine's C library.
* At time of creating this, the install page shows all green checks for requirements.

## TODO

- [ ] Do a better job of downloading Blesta so you don't have to go /blesta
- [ ] Work on PHP 7.0 support
