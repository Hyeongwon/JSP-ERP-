--<ScriptOptions statementTerminator=";"/>

select commute_date, depart_code.depart_name, rank, employee_num, employee_name,
commute_name, commute_count, commute_start, commute_finish from commute
natural join personnel natural join depart natural join depart_code natural join commute_code;

select commute_date, personnel.employee_name, commute_code.commute_name,
commute_count, commute_start, commute_finish from commute natural join personnel
inner join commute_code on commute_code.commute_id = commute.commute_code;

INSERT INTO commute(commute_code, commute_count, commute_start, commute_finish,
employee_id, commute_date) VALUES(1, 1, 2014-12-11, 2014-12-11, 1, 2014-12-12);

select commute_date, depart_code.depart_name, rank, employee_num, employee_name,
commute_name, commute_count, commute_start, commute_finish from commute
inner join personnel inner join depart inner join depart_code inner join commute_code
on commute.commute_code = commute_code.commute_id and depart.depart_code = depart_code.depart_id;

select * from payroll;

select extrapay_code.extrapay_name, extra_value, extrapay.employee_id, personnel.employee_num, personnel.employee_name, personnel.rank
from extrapay inner join personnel inner join extrapay_code
on extrapay.employee_id = personnel.employee_id and extrapay.extra_code = extrapay_code.extrapay_id;