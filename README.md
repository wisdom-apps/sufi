About
=====

Application for book: Inayat Khan "Bowl of Saki".

`www` - html/css/js application for Cordova.
`data` - files for text (generate `info.en.js` from `en.txt`)

Start in browser
================

Goto `www` folder and start `index.html`. Click on message box for next random message.


Create for Android
==================

Create Android native application by Cordova.

Installation
------------

Startup pre-configured VirtualMachine.

Needed to be installed:

Vagrant: https://www.vagrantup.com/
VirtualBox: https://www.virtualbox.org/


Then checkout:

https://github.com/driftyco/ionic-box

And:

```bash
$ vagrant up
$ vagrant ssh
```

For windows needed to fix ppk file, by `puttygen` load `private_key` file, 
and generate `private_key.ppk` file.

Login in box by putty


Clone this files (`sufi` folder) in `ionic-box` folder.


Configure Cordova
-----------------

Connect to ssh to box, then:


```bash
$ cd /home/vagrant
$ cordova create sufi
$ cd sufi
$ cordova platform add android
```

remove 'www':
```bash
$ rm -R www
```

Create symlink to www folder (on host machine):

```bash
$ ln -s /vagrant/sufi/www www
```

Build:

```bash
$ cordova build android
```

Copy to shared with host machine folder:

```bash
$ cp /home/vagrant/sufi/platforms/android/ant-build/CordovaApp-debug.apk /vagrant/CordovaApp-debug.apk
```

Copy "CordovaApp-debug.apk" from `ionic-box` at host machine to Android.


Working
-------

On host machine edit files in `ionic-box/sufi/www`.


Update APK
----------

If VM not started:

```bash
$ vagrant up
```

in box:

```bash
$ cd /home/vagrant/sufi
$ cordova build android
$ cp /home/vagrant/sufi/platforms/android/ant-build/CordovaApp-debug.apk /vagrant/CordovaApp-debug.apk
```

copy "CordovaApp-debug.apk" to Android