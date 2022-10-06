create database if not exists healthdata;
select DISTINCT chest_pain_type from healthdata.cardiology_data;
select chest_pain_type, count(chest_pain_type) from healthdata.cardiology_data 
group by chest_pain_type
order by 2 desc;
select * from healthdata.cardiology_data;
select distinct class from healthdata.cardiology_data;
desc healthdata.cardiology_data;
select max(age) from healthdata.cardiology_data;
select sex,count(sex) from healthdata.cardiology_data group by sex;
select sex, avg(age) from healthdata.cardiology_data group by sex;
select avg(age)
from healthdata.cardiology_data
where age<=55 and 45<=age;
select sex, count(class)
from healthdata.cardiology_data
where sex='Male' and class="Healthy";
select sex, count(class)
from healthdata.cardiology_data
where sex='Female' and class="Healthy";
select sex,  class, count(class) from healthdata.cardiology_data
where class="Healthy"
group by sex;
