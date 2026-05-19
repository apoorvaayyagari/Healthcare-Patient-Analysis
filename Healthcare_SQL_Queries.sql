Query 1 — Patient count by condition
select Medical_condition,count(*) as Total_patients from healthcare_dataset 
group by Medical_Condition order by Total_patients desc;

Query 2 — Average billing by condition
select medical_condition,round(avg(billing_amount),2) as average_billing from healthcare_dataset
group by Medical_Condition order by average_billing desc

Query 3 — Admission type percentage
select admission_type ,count(*) as total_admissions,
round(count(*)* 100.0/sum(count(*)) over(),1) as percentage from healthcare_dataset 
group by Admission_Type order by total_admissions desc

Query 4 — Abnormal test rate by condition
select medical_condition,count(*) as total_patients,
sum(case when test_results='abnormal' then 1 else 0 end) as abnormal_count,
round(sum(case when test_results='abnormal' then 1 else 0 end)*100.0/count(*),1) as abnormal_rate
from healthcare_dataset group by Medical_Condition order by total_patients desc

Query 5 — Average billing by age group
select 
case when Age<30 then 'under 30'
            when Age<60 then '30 to 60'
                  else 'over 60'
                  end as age_group, COUNT(*) AS Total_Patients,avg(billing_amount) as avg_billing_amt 
                  from healthcare_dataset group by case when age<30 then 'under 30'
                  when age<60 then '30 to 60'
                  else 'over 60'
                  end
                  order by avg_billing_amt desc