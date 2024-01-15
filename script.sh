if [[ $# -lt 1 ]]
then
	echo "USAGE: ./script.sh <path_to_Agent_X_jar>"
else
	filename=$1
	if ! [ -f $filename ]; then
	       echo "File $filename does not exist"
	       exit 1
	fi
	if [ -d ./tempFiles ]; then
		rm -rf ./tempFiles
	fi	
	mkdir ./tempFiles
	cp $filename ./tempFiles
	cd ./tempFiles
	jar xvf $filename
	rm k.class
	ls ../
	cp ../k.class .
	rm $filename
	jar cmf ./META-INF/MANIFEST.MF ../MCFPatched.jar .
	echo "Done!"
fi
