# 1. Select Firstname and age from table where age is >30
select FirstName, age from persons where age>30;

# 2. Select Firstname from table where age is >=20 and <=40
select FirstName from persons where age>=20 and age<=40;

# 3. Select Firstname from table where age is 20 or 40
select FirstName, age from persons where age in (20,30);

# 4. Group the sum of ages by gender from table persons
select gender, sum(age) as total_age from persons group by gender

# 5. Sort table by age in ascending and descending order
select * from persons order by age
select * from persons order by age desc