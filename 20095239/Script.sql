--<ScriptOptions statementTerminator=";"/>
create table personnel (
	employee_id         varchar(100)         NOT NULL  ,
	employee_name  	  	varchar(100)         NOT NULL  ,
	eng_name		    varchar(100)			NULL      ,	
	RRnum	            varchar(100)         NULL      ,
	joined_date	        varchar(100)         NULL      ,
	classification 		varchar(100)  	    NULL      ,
	position            varchar(100)         NULL      ,
	rank            	varchar(100)         NULL      ,
	duty               	varchar(100)        	NULL      ,
	mobile1             varchar(100)        	NULL      ,
	mobile2             varchar(100)        	NULL      ,
	passport_num		varchar(100) 		NULL	  ,
	email				varchar(100) 		NULL	  ,
	depart_code			varchar(100) 		NULL	  ,
	address				varchar(100) 		NULL	  ,
	zip_code			varchar(100)			NULL	  ,
	employee_num		varchar(100)			NULL	  ,
	employee_image		BLOB				NULL	  ,
	
	PRIMARY KEY ( employee_id )
);

create table depart (
	depart_id         varchar(10)         NOT NULL  ,
	depart_name  	  varchar(30)         NOT NULL  ,
	depart_code		  varchar(30)		  NULL      ,	
	employee_id	      varchar(13)         NULL      ,
	
	PRIMARY KEY ( depart_id ),
	FOREIGN KEY ( employee_id ) REFERENCES personnel( employee_id )
);

create table career (
	career_id         varchar(10)         NOT NULL  ,
	career_joined  	  varchar(30)         NULL  	,
	career_resign	  varchar(30)		  NULL      ,	
	company_name      varchar(30)         NULL      ,
	duty			  varchar(30)         NULL      ,
	reason			  varchar(30)         NULL      ,
	employee_id	      varchar(13)         NULL      ,
	
	PRIMARY KEY ( career_id ),
	FOREIGN KEY ( employee_id ) REFERENCES personnel( employee_id )
);

create table education (
	education_id         varchar(10)         NOT NULL  ,
	education  	  		 varchar(30)         NULL  	,
	education_name	  	 varchar(30)		  NULL      ,	
	education_date       varchar(30)         NULL      ,
	graduation_date		 varchar(30)         NULL      ,
	day_night			 varchar(30)         NULL      ,
	location	     	 varchar(13)         NULL      ,
	classification	     varchar(13)         NULL      ,
	employee_id	      	 varchar(13)         NULL      ,
	
	PRIMARY KEY ( education_id ),
	FOREIGN KEY ( employee_id ) REFERENCES personnel( employee_id )
);

create table family (
	family_num         varchar(10)         NOT NULL  ,
	family_name 	   varchar(30)         NULL  	 ,
	relation	  	   varchar(30)		   NULL      ,	
	level_education    varchar(30)         NULL      ,
	job		 		   varchar(30)         NULL      ,
	company_name	   varchar(30)         NULL      ,
	position     	   varchar(13)         NULL      ,
	live	 	       varchar(13)         NULL      ,
	support	    	   varchar(13)         NULL      ,
	employee_id	       varchar(13)         NULL      ,
	
	PRIMARY KEY ( family_num ),
	FOREIGN KEY ( employee_id ) REFERENCES personnel( employee_id )
);

create table license (
	license_id         varchar(10)         NOT NULL  ,
	license_code 	   varchar(30)         NULL  	 ,
	license_num	  	   varchar(30)		   NULL      ,	
	get_date    	   varchar(30)         NULL      ,
	expiration	 	   varchar(30)         NULL      ,
	renew	  		   varchar(30)         NULL      ,
	canel_date     	   varchar(30)         NULL      ,
	canel_reason       varchar(30)         NULL      ,
	employee_id	       varchar(30)         NULL      ,
	
	PRIMARY KEY ( license_id ),
	FOREIGN KEY ( employee_id ) REFERENCES personnel( employee_id )
);

create table language (
	language_id         varchar(10)         NOT NULL  ,
	language_code 	    varchar(30)         NULL  	 ,
	organ  	   			varchar(30)		    NULL      ,	
	language_score    	varchar(30)         NULL      ,
	employee_id	       	varchar(30)         NULL      ,
	
	PRIMARY KEY ( language_id ),
	FOREIGN KEY ( employee_id ) REFERENCES personnel( employee_id )
);

create table deduct (
	deduct_id         varchar(10)         NOT NULL  ,
	deduct_code 	    varchar(30)         NULL  	 ,
	
	PRIMARY KEY ( deduct_id )
);

create table bonus (
	bonus_id        varchar(10)         NOT NULL  ,
	deduct_id 	    varchar(30)         NULL  	 ,
	bonus_code 	   	varchar(30)		    NULL      ,	
	salary_id    	varchar(30)         NULL      ,
	
	PRIMARY KEY ( bonus_id )
);

create table salary (
	salary_id           varchar(10)         NOT NULL  ,
	bonus_id 	    	varchar(30)         NULL  	 ,
	deduct_id  	   		varchar(30)		    NULL      ,	
	account_num    		varchar(30)         NULL      ,
	account_holder	    varchar(30)         NULL      ,
	bank_code	       	varchar(30)         NULL      ,
	basepay	       		varchar(30)         NULL      ,
	employee_id	        varchar(30)         NULL      ,
	
	PRIMARY KEY ( salary_id ),
	FOREIGN KEY ( employee_id ) REFERENCES personnel( employee_id ),
	FOREIGN KEY ( bonus_id )    REFERENCES bonus( bonus_id ),
	FOREIGN KEY ( deduct_id )   REFERENCES deduct( deduct_id )
);

create table extrapay (
	extra_id           varchar(10)         NOT NULL  ,
	extra_code 	       varchar(30)         NULL  	 ,
	employee_id	       varchar(30)         NULL      ,
	
	PRIMARY KEY ( extra_id ),
	FOREIGN KEY ( employee_id ) REFERENCES personnel( employee_id )
);

create table commute (
	commute_id           varchar(10)         NOT NULL  ,
	commute_code 	     varchar(30)         NULL  	 ,
	extra_id	         varchar(30)         NULL      ,
	commute_date	     varchar(30)         NULL      ,
	commute_reason	     varchar(30)         NULL      ,
	employee_id	         varchar(30)         NULL      ,
	
	PRIMARY KEY ( extra_id ),
	FOREIGN KEY ( employee_id ) REFERENCES personnel( employee_id ),
	FOREIGN KEY ( extra_id ) REFERENCES extrapay ( extra_id )
);

create table commute (
	commute_id           varchar(10)         NOT NULL  ,
	commute_code 	     varchar(30)         NULL  	 ,
	extra_id	         varchar(30)         NULL      ,
	commute_date	     varchar(30)         NULL      ,
	commute_reason	     varchar(30)         NULL      ,
	employee_id	         varchar(30)         NULL      ,
	
	PRIMARY KEY ( extra_id ),
	FOREIGN KEY ( employee_id ) REFERENCES personnel( employee_id ),
	FOREIGN KEY ( extra_id ) REFERENCES extrapay ( extra_id )
);

create table pc (

	commute_id           varchar(30)         NULL  ,
	employee_id	         varchar(30)         NULL      ,
	
	FOREIGN KEY ( employee_id ) REFERENCES personnel( employee_id ),
	FOREIGN KEY ( commute_id ) REFERENCES commute ( commute_id )
);

drop table commute;

create table commute (
	commute_id           varchar(10)         NOT NULL  ,
	commute_code 	     varchar(30)         NULL  	 ,
	extra_id	         varchar(30)         NULL      ,
	commute_date	     varchar(30)         NULL      ,
	commute_reason	     varchar(30)         NULL      ,
	employee_id	         varchar(30)         NULL      ,
	
	PRIMARY KEY ( commute_id ),
	FOREIGN KEY ( employee_id ) REFERENCES personnel( employee_id ),
	FOREIGN KEY ( extra_id ) REFERENCES extrapay ( extra_id )
);

create table es (

	salary_id           varchar(30)         NULL  ,
	extra_id	         varchar(30)         NULL      ,
	
	FOREIGN KEY ( salary_id  ) REFERENCES salary ( salary_id ),
	FOREIGN KEY ( extra_id ) REFERENCES extrapay ( extra_id )
);

Select personnel.employee_id, personnel.employee_name, salary.salary_grade, personnel.depart_code, personnel.rank,
salary_class, basepay, joined_date, account_num from personnel inner join salary on personnel.employee_id = salary.employee_id;

Select cert_num, cert_type, cert_date, cert_use, personnel.employee_name, personnel.RRnum,
personnel.address, depart_code.depart_name, personnel.rank, personnel.employee_num, personnel.employee_id from cert
inner join personnel inner join depart_code inner join depart on depart.depart_code = depart_code.depart_id
where personnel.employee_id = 1;
select employee_num, employee_name, RRnum, depart_code.depart_name, rank, joined_date,
email from personnel inner join depart inner join depart_code where employee_num = '2014-112';
select employee_num, employee_name, RRnum, depart_code.depart_name, rank, joined_date,
email from personnel inner join depart inner join depart_code on depart.depart_id = depart_code.depart_id
 where employee_num = '2014-112';
select employee_num, employee_name, RRnum, depart_code.depart_name, rank, joined_date,email from personnel inner join depart inner join depart_code on depart.depart_id = depart_code.depart_id where employee_num = '2014-112';



select employee_id from personnel where employee_name = '주다해';
select commute_id, commute_code, commute_count, commute_start, commute_finish,
personnel.employee_id, commute_date from commute natural join personnel;