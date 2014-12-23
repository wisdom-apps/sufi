Batch files
===========

Rename `_bat` files in `bat` folder to `bat` and copy to up folder `sufi/vagrant`.

Files:

* _ssh.bat - auto login to VM box
* _build_apk.bat - auto build apk file, and store in `./build` folder
* build_apk.sh - shell script executed at VM box for build apk file, and copy apk to `build` folder


Use Vagrant from windows
------------------------

Install SSH client: Putty

http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html

Set `pytty.exe` - in `PATH` env variable (copy in some folders).

Also needed `PuTTYgen` for convert Vagrant private key.


Configure Putty for Vagrant
---------------------------

https://github.com/Varying-Vagrant-Vagrants/VVV/wiki/Connect-to-Your-Vagrant-Virtual-Machine-with-PuTTY

Create `ionic-box` session for vagrant:

- default user `vagrant`
- SSH/Auth/Private key file for authentication - *.ppk
