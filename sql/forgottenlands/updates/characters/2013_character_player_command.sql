INSERT IGNORE INTO rbac_account_groups (groupId, accountId)   
   SELECT '1', id 
   FROM account;