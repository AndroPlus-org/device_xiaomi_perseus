#!sbin/sh

#
# use ro.build.fingerprint,
# use ro.build.version.release and ro.build.version.security_patch,
# from system/build.prop instead of default.prop, for A/B slot.
# for keymaster-3.0+
#
# by wzsx150
# v1.7-20181130
#

SYSTEM_TMP=/tmp/system_tmp

for i in $(seq 0 50)
do
  case $(getprop ro.boot.slot_suffix) in
  "_a")
    systempart=`find /dev/block -name system_a | grep "by-name/system_a" -m 1 2>/dev/null`
    ;;
  "_b")
    systempart=`find /dev/block -name system_b | grep "by-name/system_b" -m 1 2>/dev/null`
    ;;
  *)
    systempart=`find /dev/block -name system | grep "by-name/system" -m 1 2>/dev/null`
    ;;
  esac
  [ -z "$systempart" ] || break
  usleep 100000
done
if [ -z "$systempart" ]; then
  setprop "twrp.fingerprintid.prop" "0"
  exit 1
fi

setprop "twrp.fingerprintid.system" "$systempart"

mkdir -p "$SYSTEM_TMP"
mount -t ext4 -o ro "$systempart" "$SYSTEM_TMP"
usleep 100

fingerprint=`cat "$SYSTEM_TMP/system/build.prop" /system_root/system/build.prop /system/system/build.prop /default.prop 2>/dev/null | grep -F "ro.build.fingerprint=" -m 1 | cut -d'=' -f2`
RELEASE=`cat "$SYSTEM_TMP/system/build.prop" /system_root/system/build.prop /system/system/build.prop /default.prop 2>/dev/null | grep -F "ro.build.version.release=" -m 1 | cut -d'=' -f2`
PATCH=`cat "$SYSTEM_TMP/system/build.prop" /system_root/system/build.prop /system/system/build.prop /default.prop 2>/dev/null | grep -F "ro.build.version.security_patch=" -m 1 | cut -d'=' -f2`
#SDK=`cat "$SYSTEM_TMP/system/build.prop" /system_root/system/build.prop /system/system/build.prop /default.prop 2>/dev/null | grep ro.build.version.sdk -m 1 | cut -d'=' -f2`

resetprop "ro.build.fingerprint" "$fingerprint"
resetprop "ro.build.version.release" "$RELEASE"
resetprop "ro.build.version.security_patch" "$PATCH"
#resetprop "ro.build.version.sdk" "$SDK"

setprop "twrp.fingerprintid.prop" "1"

umount "$SYSTEM_TMP"


exit 0




