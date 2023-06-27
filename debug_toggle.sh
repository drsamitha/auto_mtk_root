#/bin/sh
#adb shell toggle
echo 
am start -n com.android.settings/.DevelopmentSettings
 sleep 4 
settings put global adb_enabled 0

