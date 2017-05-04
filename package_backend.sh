echo "Packaging Bundle..."

packageNum=`php /home/matt/git/rabbitmqphp_example_deployTest/testRabbitMQClient.php nextPackage backendPackage-v | xargs`
	cd /home/matt/Scripts/temp/
	echo "MySQL Password?"
		mkdir mySqlData
			cd mySqlData/
				mysqldump -u root -p login > backup_sql.sql
				cd ..
	
	beScrDIR=/home/matt/git/it490_backend_final/it490_backend_final
		cp -a $beScrDIR* /home/matt/Scripts/temp/

	tar -czvf backendPackage-v"$packageNum".tar.gz -C /home/matt/Scripts/temp/ . 
		
		rm -r /home/matt/Scripts/temp/it490_backend_final/
		rm -r /home/matt/Scripts/temp/mySqlData/
        echo `ls | grep backendPackage-v"$packageNum"`
		echo "Bundle Complete"
	
	# Scp package to the deploy server
	echo "Sending to deploy server..."
	scp -r /home/matt/Scripts/temp/backendPackage-v"$packageNum".tar.gz uzair@192.168.2.30:/home/uzair/Packages/
	
	cp backendPackage-v"$packageNum".tar.gz ../backendPackage/
	rm /home/matt/Scripts/temp/backendPackage-v"$packageNum".tar.gz
	php /home/matt/git/rabbitmqphp_example_deployTest/updateRabbitMQClient.php updateVersion backendPackage-v"$packageNum".tar.gz "$packageNum"

	
