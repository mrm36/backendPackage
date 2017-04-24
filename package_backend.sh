echo "Packaging Bundle..."
	cd /home/matt/Scripts/temp/
		mkdir mySqlData
			cd mySqlData/
				mysqldump -u root -p login > backup_sql.sql
				cd ..
	
	  beScrDIR=/home/matt/git/it490_backend_final/it490_backend_final
	  rabbitMQConf=/var/lib/rabbitmq
	
		cp -a $beScrDIR* /home/matt/Scripts/temp/

		mkdir rabbitMQData
			cp -a $rabbitMQConf* /home/matt/Scripts/temp/rabbitMQData/ 
	
	tar -czvf backendPackage.tar.gz -C /home/matt/Scripts/temp/ . 
	rm -r /home/matt/Scripts/temp/it490_backend_final/
	rm -r /home/matt/Scripts/temp/mySqlData/
        echo `ls | grep backendBundle`
	echo "Bundle Complete"

	echo "Sending to deploy server"
	scp -r /home/matt/Scripts/temp/backendPackage.tar.gz uzair@192.168.2.30:/home/uzair/Packages
