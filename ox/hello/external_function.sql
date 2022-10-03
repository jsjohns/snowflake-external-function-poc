use schema public;

create or replace external function times_two(n int) returns int
    api_integration = openexchange_snowflake_external_function_poc
    as 'https://jikqfshjua.execute-api.us-east-1.amazonaws.com/poc/snowflake-external-function-poc';
