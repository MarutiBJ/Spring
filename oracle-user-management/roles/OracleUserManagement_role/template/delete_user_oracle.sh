#!/bin/sh
#mkdir /home/ec2-user/Oracle_User_Management
cd /u01/app/oracle/product/11.2.0/xe/bin
. ./oracle_env.sh
input="/home/ec2-user/delete_user_oracle.csv"
while IFS=',' read -r f1
do
echo "sqlplus system/atos123 <<EOF
begin
#drop user $f1 cascade;
end;
exit;
EOF" > /home/ec2-user/delete_user_oracle.sh

chmod +x /home/ec2-user/delete_user_oracle.sh
cd /home/ec2-user
./delete_user_oracle.sh
done < "$input"
