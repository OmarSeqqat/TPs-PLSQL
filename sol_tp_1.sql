---question 2
declare
nbr_employee number;
begin
select count(*) into nbr_employee from EMPLOYEES;
dbms_output.put_line('nombre employees est : ' || nbr_employee );
end;
---question 3
declare
nbr_employee number;
begin
select count(*) into nbr_employee from EMPLOYEES where MANAGER_ID = 1;
dbms_output.put_line('nombre employees est : ' || nbr_employee );
end;
---question 4
declare
nbr_employee_total number;
nbr_employee_1 number;
proportion number;
begin
select count(*) into nbr_employee_1 from EMPLOYEES where MANAGER_ID = 1;
select count(*) into nbr_employee_total from EMPLOYEES;
proportion := (nbr_employee_1 * 100) /(nbr_employee_total);
dbms_output.put_line('proportion= ' || proportion || '%');
end;
