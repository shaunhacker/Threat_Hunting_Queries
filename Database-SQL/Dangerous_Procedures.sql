-- Detects if an attacker has enabled 'xp_cmdshell' to run OS commands via SQL
USE master;
GO
SELECT 
    name AS ProcedureName, 
    value_in_use AS IsEnabled
FROM sys.configurations
WHERE name = 'xp_cmdshell' AND value_in_use = 1;
