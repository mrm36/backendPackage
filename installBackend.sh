echo "Unzippin Package... ;)"
# Getting current package Number
packageNum=`php /home/matt/git/rabbitmqphp_example_deployTest/testRabbitMQClient.php nextPackage backendPackage.tar.gzi | xargs`

tar -xzf /home/uzair/Packages/backendPackage-v"$packageNum".tar.gz -C /home/uziar/Packages/backend/

echo "Copying SQL Data..."
echo "Enter MySQL  Password?..."
	mysql -u root -p login < /home/uzair/Packages/backend/backendPackage-v"$packageNum"/mySqlData/backup_sql.sql

mkdir /home/uzair/Desktop/GoliathBackend

echo "Installing backend.. how exciting -_-"
mv /home/uzair/Packages/backend/backendPackage-v"$packageNum"/it1490_backend_final /home/uzair/Desktop/GoliathBackend/

echo "Backend Package Sucessfully Installed!"

