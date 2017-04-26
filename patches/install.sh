echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/base system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	#git am $rootdirectory/device/umi/super/patches/$dir/*.patch
	git apply $rootdirectory/device/umi/super/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
