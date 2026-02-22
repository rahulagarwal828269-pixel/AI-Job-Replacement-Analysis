# AI Impact on Job Replacement (2026) 🤖💼

## 📌 Project Overview
As artificial intelligence rapidly transforms the global workforce, understanding its impact on job security, salary fluctuations, and skill requirements is critical. This project conducts an in-depth exploratory data analysis (EDA) on the projected effects of AI automation on various job roles and industries up to the year 2026. 

Using **MySQL**, raw workforce data was analyzed to identify vulnerable professions, calculate the financial impact of AI adoption, and categorize roles based on remote work feasibility and educational requirements.

## 📂 Dataset Description
The analysis is based on the `AI_Job_Replacement_2026.csv` dataset, which contains simulated workforce metrics across multiple countries and industries. Key columns include:
* **Job & Industry Data:** `job_role`, `industry`, `country`, `education_requirement_level`
* **Risk Metrics:** `automation_risk_percent`, `ai_replacement_score`, `ai_adoption_level`
* **Financial Impact:** `salary_before_usd`, `salary_after_usd`, `salary_change_percentage`
* **Workforce Dynamics:** `skill_gap_index`, `skill_demand_growth_percentage`, `remote_feasibility_score`

## 🛠️ Tools & Technical Skills Demonstrated
* **Database Management:** MySQL
* **SQL Techniques:**
  * Complex Aggregations & Grouping (`SUM`, `AVG`, `COUNT`, `GROUP BY`)
  * Data Categorization & Conditional Logic (`CASE WHEN`)
  * Data Filtering (`HAVING`, `WHERE`)
  * Trend Analysis (Year-over-Year tracking)

## 📊 Key Analytical Insights
The SQL script (`ai_job_replacement_2026.sql`) performs several advanced queries to uncover workforce trends:

1. **Yearly AI Adoption Trends:** Tracks the average automation risk and AI adoption levels over time, providing a macro-level view of technological integration.
2. **Vulnerability by Job Role:** Ranks specific professions by their average AI replacement score to pinpoint the most at-risk careers.
3. **Salary Impact Analysis:** Evaluates the percentage change in salaries (before vs. after AI adoption) across different job roles to measure financial disruption.
4. **Education vs. Automation Risk:** Analyzes how different educational requirement levels correlate with average automation risk, skill gaps, and salary changes.
5. **Skill Gap Identification:** Highlights specific industry and job role combinations that suffer from a skill gap index greater than 50, sorted by the demand for new skills.
6. **Remote Work Feasibility:** Categorizes jobs into 'Highly Remote', 'Hybrid Possible', or 'On-Site Required' and correlates these work styles with automation risk and salary adjustments.

## 📈 Visualizing the Data
*(If you create a dashboard for this project later, replace the image file name below and upload your screenshot to this repository!)*

<img width="1303" height="730" alt="AI_Job_Replacement_Dashboard" src="https://github.com/user-attachments/assets/0317138d-b2a4-4e77-9e8b-fb004e367121" />


## 🚀 How to Run This Project
1. Clone this repository to your local machine.
2. Open your preferred SQL environment (e.g., MySQL Workbench).
3. Execute the table creation commands in `ai_job_replacement_2026.sql` to establish the database schema.
4. Import the `AI_Job_Replacement_2026.csv` data into the newly created `ai_job_replacement` table.
5. Run the remaining SQL queries in the script to generate the analytical insights.

---
*If you have any questions or feedback regarding this analysis, feel free to reach out!*

**LinkeDin profile**: [https://www.linkedin.com/in/rahul-agarwal-184596272/]
**Email**: [rahulagarwal828269@gmail.com]
