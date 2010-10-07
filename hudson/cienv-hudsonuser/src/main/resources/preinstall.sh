USER_EXISTS=`getent passwd | cut -d":" -f1 | grep "${hudson.user}"`
if [ -z $USER_EXISTS ] ; then
	useradd -r -m -d ${hudson.home} -c"CI Build User" ${hudson.user}
fi
#
