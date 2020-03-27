fileName=$(git log --name-only --oneline -1 --format= | grep -v '.{7} ')

if [[ $fileName == *"ios"* ]]; then
	echo "ios"
elif [[ $fileName == *"android"* ]]; then
	echo "android"
fi
