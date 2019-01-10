Role Name
=========

This role Add User, Delete User and Update User in Oracle Db.It take data for oracle from excel file and execute a shell script present in template folder and then a yml file is called to execute that shell script. 

Requirements
------------

Operating System: CentOS 7 Hardware Configuration: 8GB RAM
Oracle should be installed on VM.
Cloud Provider:- AWS

Role Variables
--------------

As such their is no variable is required to run this role.

Dependencies
------------

Need to provide excel file in template folder for giving the data to oracle to perform operation.

Example Playbook
----------------

You can call individual yml file for add,delete and update user as follows:- 


  - hosts: all
    become: true
    tasks:
    - import_role:
      name: roles/OracleUserManagement_role 
      tasks_from: add_user_oracle.yml

Ansible Command:- ansible-playbook -i hosts/inventory_oracle.yml add_user_oracle.yml   (For adding user in Oracle Db)

Author Information
------------------
Vikram Singh Kushwaha