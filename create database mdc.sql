create database if not exists healthdata;
select DISTINCT chest_pain_type from healthdata.cardiology_data;
select chest_pain_type, count(chest_pain_type) from healthdata.cardiology_data 
group by chest_pain_type
order by 2 desc;