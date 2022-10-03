create temp table numbers as
    select seq4() as n from table(generator(rowcount => 1000000));

select n, times_two(n) from numbers;