COPY dimcrashdetails
FROM 'C:\Program Files\PostgreSQL\17\data\project1\dimcrashdetails.csv'
WITH (FORMAT csv, HEADER false);

COPY dimlocation
FROM 'C:\Program Files\PostgreSQL\17\data\project1\dimlocation.csv'
WITH (FORMAT csv, HEADER false);

COPY dimpersondetails
FROM 'C:\Program Files\PostgreSQL\17\data\project1\dimpersondetails.csv'
WITH (FORMAT csv, HEADER false);

COPY dimtime
FROM 'C:\Program Files\PostgreSQL\17\data\project1\dimtime.csv'
WITH (FORMAT csv, HEADER false);

COPY factcrash
FROM 'C:\Program Files\PostgreSQL\17\data\project1\factcrash.csv'
WITH (FORMAT csv, HEADER false);

COPY factfatality
FROM 'C:\Program Files\PostgreSQL\17\data\project1\factfatality.csv'
WITH (FORMAT csv, HEADER false);