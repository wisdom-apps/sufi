cd sufi
ANDROID_HOME=~/android-sdk-linux
PATH=$PATH:~/android-sdk-linux/tools:~/android-sdk-linux/platform-tools
cordova build android
cp /home/vagrant/sufi/platforms/android/ant-build/CordovaApp-debug.apk /vagrant/sufi/build/CordovaApp-debug.apk
rm /home/vagrant/sufi/platforms/android/ant-build/CordovaApp-debug.apk