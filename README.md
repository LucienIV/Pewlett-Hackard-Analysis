# Pewlett-Hackard-Analysis

## Overview
### Purpose of Analysis
The purpose of this analysis is to take tables containing information for employees at the given company and utilize queries to determine which employees, grouped by title, will be retiring as well as identify which are eligible for a mentorship program.

## Results
### Major Takeaways
The following is the total number of retiring employees for each position:

![image](https://user-images.githubusercontent.com/92831138/149017935-b00ba3be-b6f4-4d9e-a33f-04f589b353a6.png)
- The most significant information to come out of the analysis is that the senior positions at the company are the most populated with employees soon to retire. New senior engineers and senior staff will need to be either hired or appointed in great numbers over the coming years.
- There are also a decently large amount of engineers (as well as assistant engineers) due for retirement as well, making acquisition of new engineers a high priority.
- Though it is a far smaller number on paper than the other positions due for retirement, there are still two managers due for retirement out of nine total managers. Due care will need to be given to finding appropriate replacements for such important positions.
- The mentorship eligibility program only has 1,549 qualifying employees. The company currently has over 240 thousand employees, making mentorship a valuable and limited resource as far as this batch of considered employees is concerned. 

## Summary
### New Roles Needed
A simple query like `select sum(count) from retiring_titles` will show that there are a total of 72,458 employees due to retire soon. Running `select distinct count(emp_no) from dept_emp where to_date = '9999-01-01'` will show that this is out of a total of 240,124 employees at the company. This would indicate that roughly thirty percent of the company's workforce can be expected to retire in the coming years. Hiring new employees to fill the entry level positions and promoting internally to the higher level positions should definitely be made a priority at this workplace.

### Training Next Generation
As earlier stated, the mentorship eligibility query performed returned only 1,549 qualifying employees. This is an incredibly small portion of the workplace population. Nowhere in the provided material was it specified how many people each person in the program would be responsible for mentoring, but it can be assumed that more than the number found via this query would be ideal. Modifying the query to include employees born in 1964 by altering the where query to be for `birth_date between '1964-01-01' and '1965-12-31'` increases the number of qualifying employees to a staggering 19,905. This would provide for much greater versatility, both in providing enough available mentors as well as a greater ability to remove those who do not prove adequate in the role. 
