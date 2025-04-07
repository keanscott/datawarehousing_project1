SELECT
    t.dayweek,
    SUM(c.numberfatalities) AS total_fatalities,
    GROUPING(t.dayweek) AS grp_dayweek
FROM factcrash c
JOIN dimtime t ON c.time_id = t.time_id
GROUP BY GROUPING SETS (
    (t.dayweek),
    ()
)
ORDER BY total_fatalities DESC;