-- Coding order
/*
Select Distince Top 2
	Col_name,
	SUM(Col_name)
From Table
Where Col = {Some value}
Group By Col_name
Having SUM(Col_2) > {some value}
Order By col_name Asc/Dsce  */

-- Execution Order
/*
1) From
2) Where
3) Group By
4) Having
5) Select Distinct
6) Order By
7) Top
*/

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- Static (fixed) Values
-- What if we don't want to query the data from inside the table but we would like to show static data from user or our end.

Select 123 -->No column name with 123 value

Select 123 as Static_val

Select c.id, c.first_name,
'New customer' AS Coustomer_type
from customers c

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- DATA DEFINITION LANGUAGE (DDL)
--> CREATE
--> ALTER
--> DROP

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- Create
-- Query: Create a new table called persons with columns : id, person_name,
--		  DOB, and phone number.

CREATE Table Persons (
id INT Not Null,
Persone_name Varchar(50) Not Null,
DoB Date,
phone varchar(10) Not Null
Constraint pk_persons Primary Key (id)
);

Select * 
From Persons -->our table is empty

-- Alter - Want to edit the definition of the table or to change.
-- Query: Add a new column called email to the persins table.

---------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER Table Persons
ADD email varchar(50) not null
--> By adding the new colunms are added or appended at the end of the table by default.
 --> But what if we want to place our new column inbetween the other columns...?
 --> This cannot be possible if we want to make this happen we have to drop and recreate as required.

Select * 
From Persons

-- Query: Remove the column phone_number from the persins table.
ALTER Table Persons 
Drop column phone

Select * 
From Persons

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- Drop - Table can be dropped completely.
-- Query: Delete the table Persons from the DataBase.

Drop Table Persons -->Commands completed successfully.