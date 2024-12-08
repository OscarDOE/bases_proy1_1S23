-- CREATE EXTENSION postgres_fdw

CREATE SERVER postgres-jdbc_srv
	FOREIGN DATA WRAPPER postgres_fdw
	OPTIONS(host 'localhost', dbname 'replicaprueba', port '5432');
CREATE USER MAPPING FOR CURRENT_USER SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public.departments (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	department_id serial4 NULL,
	department_name varchar NULL,
	"location" varchar NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public.departments2 (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	department_id serial4 NULL,
	department_name varchar NULL,
	"location" varchar NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public.employees (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	employee_id serial4 NULL,
	first_name varchar NULL,
	last_name varchar NULL,
	job_title varchar NULL,
	salary numeric NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public.departments2_department_id_seq (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"last_value" int8 NULL,
	log_cnt int8 NULL,
	is_called bool NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public.departments_department_id_seq (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"last_value" int8 NULL,
	log_cnt int8 NULL,
	is_called bool NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public.employees_employee_id_seq (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"last_value" int8 NULL,
	log_cnt int8 NULL,
	is_called bool NULL
)
SERVER postgres-jdbc_srv;

sdfsdfdsf