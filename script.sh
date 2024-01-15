if [[ $# -lt 1 ]]
then
	echo "Failed"
else
	filename=$1
	echo $filename
	mkdir ./tmp
	cp $filename ./tmp
	cd ./tmp
	jar xvf $filename
	rm k.class
	ls ../
	cp ../k.class .
	rm $filename
	jar cmf ./META-INF/MANIFEST.MF ../MCFPatched.jar .
	echo "Done!"
fi
