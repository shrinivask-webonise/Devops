Date=$(date +"%d_%b_%Y_%H:%M:%S")

mysqldump -u $1 -p$2 $3 > testbackup_${Date}.sql 2>&1 | grep -v 'Using a password'
echo "Backup successful"
