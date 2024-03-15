--Table schema
create table contacts(
contact_id integer not null,
first_name varchar (15),
last_name varchar (15),
email varchar (50),
primary key(contact_id)
);


create table category(
category_id varchar(5),
category varchar (15),
primary key (category_id)
);


create table subcategory(
subcategory_id varchar(10),
subcategory varchar (30),
primary key (subcategory_id)
);


create table campaign(
cf_id integer not null,
contact_id integer not null,
company_name varchar,
description varchar,
goal float,
pledged float,
outcome varchar (10),
backers_count integer,
country varchar (2),
currency varchar (3),
launched_date date,
end_date date,
category_id varchar(5),
subcategory_id varchar (10),
primary key (cf_id),
foreign key (contact_id) references
	contacts(contact_id),
foreign key (category_id) references
	category(category_id),
foreign key (subcategory_id) references
	subcategory(subcategory_id)
);


select*
from contacts;

select*
from category;

select*
from subcategory;

select*
from campaign;
