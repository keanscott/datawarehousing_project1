SELECT
    p.age_group,
    p.gender,
    COUNT(f.fatality_id) AS total_fatalities,
    GROUPING(p.age_group) AS grp_agegroup,
    GROUPING(p.gender) AS grp_gender
FROM factfatality f
JOIN dimpersondetails p 
    ON f.person_id = p.person_id
GROUP BY ROLLUP(p.age_group, p.gender)
ORDER BY p.age_group, p.gender;
