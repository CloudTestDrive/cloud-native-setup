#/bin/bash -f
echo Testing if $1 is in /etc/hosts
if ping -c 1 $1 >& /dev/null ; 
then 
echo $1 is already in /etc/hosts ;
else 
echo Updating hosts file to add $1 as localhost aliases
cat /etc/hosts | sed -e "s/127.0.0.1 /127.0.0.1 $1 /" > /tmp/hosts
chmod 644 /tmp/hosts
sudo chown root.root /tmp/hosts
sudo mv /tmp/hosts /etc/hosts
echo Added $1 to /etc/hosts ;
fi ;
