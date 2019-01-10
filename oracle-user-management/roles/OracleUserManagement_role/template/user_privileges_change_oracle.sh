#!/bin/sh
#mkdir /home/ec2-user/Oracle_User_Management
cd /u01/app/oracle/product/11.2.0/xe/bin
. ./oracle_env.sh
input="/home/ec2-user/user_password_change_&user_privileges_change_oracle.csv"
while IFS=',' read -r f1 f2 f3 f4 f5
do
echo "sqlplus system/atos123 <<EOF
begin
#GRANT $f3,$f4 TO $f1;
end;
exit;
EOF "> /home/ec2-user/user_privilege_change_oracle.sh

chmod +x /home/ec2-user/user_privilege_change_oracle.sh
cd /home/ec2-user/
./user_privilege_change_oracle.sh
done < "$input"