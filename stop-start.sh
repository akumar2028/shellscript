#!//bin/bash
#after reboot or start the the machine it check important service is running or not
#important service apache2,mysql,ssh etc
#check service
#PID=$(netstat -tunlp | grep 80 | awk '{print $7}' | cut -d'/' -f1)
avi=$(ls /var/run/apache2 | grep apache2)
ap="apache2.pid"
#ap=$(service apache2 status | awk '{print $4}')
echo "$ap"
#sh=$(service ssh status)
for pi in avi
do 
if [ $pi -eq $ap ];then
	echo "apache2 is  running "
#elif [$pi != $fi];then
#	echo "apache2 is not running"
else
   echo "apapche2 is not running"
fi
#ser=$(service apache2 start)
#	echo "apache2 has been started"

#elif $(service apache2 restart);then

#	echo "apache2 is running"

done

 
