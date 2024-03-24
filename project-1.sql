use capstone 

#1. Group the customers based on their income type and find the average of their annual income.

select Type_income, round(Avg(Annual_income),0) as Average_annual_income from credit_card 
group by Type_income

#2. Find the female owners of cars and property.

select Ind_ID from credit_card
where GENDER = 'F' and Car_Owner = 'Y' and Propert_Owner ='Y'

#3. Find the male customers who are staying with their families.

select * from credit_card
where not Marital_status  = 'Separated' and GENDER = 'M'

#4. Please list the top five people having the highest income

select * from credit_card
order by Annual_income desc  
limit 5

#5. How many married people are having bad credit

select * from credit_card c
inner join credit_card_label l
on l.Ind_ID = c.Ind_ID
where Marital_status = 'Married' and label = '1'

#6. What is the highest education level and what is the total count? 

select EDUCATION,count(EDUCATION) from credit_card
where EDUCATION = 'Higher education'

#7. Between married males and females, who is having more bad credit? 

select count(*) as bad_credit_count from credit_card c
inner join credit_card_label l
on c.Ind_ID = l.Ind_ID
where label='1' 
group by GENDER

