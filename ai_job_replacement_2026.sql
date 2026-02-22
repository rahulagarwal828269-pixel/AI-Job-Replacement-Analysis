CREATE DATABASE ai_job_replacement_2026;
USE ai_job_replacement_2026;

CREATE TABLE ai_job_replacement (
    job_id INT PRIMARY KEY,
    job_role VARCHAR(80) NOT NULL,
    industry VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    data_year INT NOT NULL,

    automation_risk_percent DECIMAL(5,2),
    ai_replacement_score DECIMAL(5,2),
    skill_gap_index DECIMAL(5,2),

    salary_before_usd DECIMAL(10,0),
    salary_after_usd DECIMAL(10,0),
    salary_change_percentage DECIMAL(5,2),

    skill_demand_growth_percentage DECIMAL(5,2),
    remote_feasibility_score DECIMAL(5,2),
    ai_adoption_level DECIMAL(5,2),

    education_requirement_level INT,

    INDEX idx_role (job_role),
    INDEX idx_industry (industry),
    INDEX idx_country (country),
    INDEX idx_year (data_year)
);


SELECT 
    year,
    COUNT(job_id) AS total_jobs_analyzed,
    ROUND(AVG(automation_risk_percent), 2) AS avg_automation_risk,
    ROUND(AVG(ai_adoption_level), 2) AS avg_ai_adoption
FROM ai_job_replacement
GROUP BY year
ORDER BY year ASC;



SELECT job_role,
    COUNT(job_id) AS sample_size,
    ROUND(AVG(ai_replacement_score), 2) AS avg_replacement_score,
    ROUND(AVG(automation_risk_percent), 2) AS avg_automation_risk
FROM ai_job_replacement
GROUP BY job_role
ORDER BY avg_replacement_score DESC
LIMIT 10;


SELECT industry,
	ROUND(AVG(ai_adoption_level),2) AS avg_ai_adoption_level,
    ROUND(AVG(automation_risk_percent),2) AS avg_automation_risk,
    ROUND(AVG(salary_change_percentage),2) AS avg_salary_impact
FROM ai_job_replacement
GROUP BY industry
ORDER BY avg_ai_adoption_level DESC;


SELECT job_role,
	ROUND(AVG(salary_before_usd),2) AS avg_salary_before,
    ROUND(AVG(salary_after_usd),2) AS avg_salary_after,
    ROUND(AVG(salary_change_percentage),2) AS avg_salary_change_pct,
    ROUND(AVG(ai_replacement_score),2) AS avg_ai_risk
FROM ai_job_replacement
GROUP BY job_role
ORDER BY avg_salary_change_pct ASC;


SELECT education_requirement_level,    
	COUNT(job_id) AS job_count,
    ROUND(AVG(automation_risk_percent), 2) AS avg_automation_risk,
    ROUND(AVG(skill_gap_index), 2) AS avg_skill_gap,
    ROUND(AVG(salary_change_percentage), 2) AS avg_salary_change
FROM ai_job_replacement
GROUP BY education_requirement_level
ORDER BY education_requirement_level ASC;


SELECT industry, job_role,
    ROUND(AVG(skill_gap_index), 2) AS avg_skill_gap,
    ROUND(AVG(skill_demand_growth_percentage), 2) AS avg_skill_demand_growth
FROM ai_job_replacement
GROUP BY industry, job_role
HAVING avg_skill_gap > 50 
ORDER BY avg_skill_demand_growth DESC;


SELECT 
    CASE 
        WHEN remote_feasibility_score >= 75 THEN 'Highly Remote'
        WHEN remote_feasibility_score BETWEEN 40 AND 74 THEN 'Hybrid Possible'
        ELSE 'On-Site Required'
    END AS remote_work_category,
    COUNT(job_id) AS total_jobs,
    ROUND(AVG(automation_risk_percent), 2) AS avg_automation_risk,
    ROUND(AVG(ai_replacement_score), 2) AS avg_ai_replacement
FROM ai_job_replacement
GROUP BY 
    CASE 
        WHEN remote_feasibility_score >= 75 THEN 'Highly Remote'
        WHEN remote_feasibility_score BETWEEN 40 AND 74 THEN 'Hybrid Possible'
        ELSE 'On-Site Required'
    END
ORDER BY avg_automation_risk DESC;