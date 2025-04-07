SELECT
    t.month,
    SUM(c.numberfatalities) AS total_fatalities,
    GROUPING(t.month) AS grp_month
FROM factcrash c
JOIN dimtime t ON c.time_id = t.time_id
GROUP BY GROUPING SETS (
    (t.month),
    ()
)
ORDER BY total_fatalities DESC;