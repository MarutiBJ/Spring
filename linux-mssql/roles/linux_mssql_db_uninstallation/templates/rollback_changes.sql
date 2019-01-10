SQLCMD -U SA -P {{db_pass}}

USE {{database_name}}
GO

DROP TABLE {{table_name}}
GO

DROP USER {{username}}
GO
DROP LOGIN {{username}}
GO

USE MASTER 
GO

DROP DATABASE {{database_name}}
GO
