SELECT 
    table_name, 
    constraint_name, 
    column_name, 
    referenced_table_name, 
    referenced_column_name
FROM 
    information_schema.key_column_usage
WHERE 
    table_schema = 'jardineria'
    AND referenced_table_name IS NOT NULL;