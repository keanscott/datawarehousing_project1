COPY factcrash
FROM 'C:\Program Files\PostgreSQL\17\data\project1\factcrash.csv'
WITH (FORMAT csv, HEADER false);

COPY factfatality
FROM 'C:\Program Files\PostgreSQL\17\data\project1\factfatality.csv'
WITH (FORMAT csv, HEADER false);