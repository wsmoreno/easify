select table_name, column_name, constraint_name, referenced_table_name, referenced_column_name
from information_schema.key_column_usage
where referenced_table_name is not null
