#!/sbin/sh
# FM Radio fix for Samsung Galaxy S3 Neo

# Check if libfmjni_s3ve3g.so present
if [ ! -f /system/system/lib/linfmjni_s3ve3g.so ]; then
	echo "There are no libfmjni_s3ve3g.so present" # print error
	exit 1 # There are no libfmjni_s3ve3g.so present
fi

# Remove OSS libfmjni (if present)
rm /system/system/lib/linfmjni.so

# Rename s3ve3g libfmjni
mv /system/system/lib/linfmjni_s3ve3g.so /system/system/lib/linfmjni.so

# Report successful execution
exit 0
