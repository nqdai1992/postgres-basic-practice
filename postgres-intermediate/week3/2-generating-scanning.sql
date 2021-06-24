
--Generating data
Select random(), random(), trunc(random() * 1000);
Select repeat('neon', 5);
Select generate_series(1, 5);
Select 'Neon ' || generate_series(1, 5);


Create table textfun (
    contents text
);

Insert Into textfun (contents) Select 'Neon ' || generate_series(1, 5);

-- Bindex is default

Create index textfun_b on textfun (contents);

Select pg_relation_size('textfun'), pg_indexes_size('textfun');

Select (Case when (random() < 0.5)
    then 'foo'
    else 'bar'
    end
) || generate_series(1000, 1005);

Insert Into textfun (contents)
Select (Case when (random() < 0.5)
    then 'foo'
    else 'bar'
    end
) || generate_series(100000, 200000);

Select contents from textfun where contents Like '%a%';

