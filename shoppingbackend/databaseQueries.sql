CREATE TABLE category (
	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	
	CONSTRAINT pk_category_id PRIMARY KEY (id)
	
);

insert into category (name,description,image_url,is_active) values ('Laptop','this is mobile description','mob_1.png',true);
insert into category (name,description,image_url,is_active) values ('Television','this is mobile description','mob_1.png',true);
insert into category (name,description,image_url,is_active) values ('Mobile','this is mobile description','mob_1.png',true);
insert into category (name,description,image_url,is_active) values ('Headphones','this is mobile description','mob_1.png',true);
insert into category (name,description,image_url,is_active) values ('MP3 Player','this is mobile description','mob_1.png',true);

create table user_detail (
	id IDENTITY,
	first_name varchar(50),
	last_name varchar(50),
	role varchar(50),
	enabled boolean,
	password varchar(60),
	email varchar(100),
	contact_number varchar(15),
	constraint pk_user_id primary key(id),
);

insert into user_detail(first_name,last_name,role,enabled,password,email,contact_number)
values ('Virat','kohli','ADMIN',true,'admin','vk@email.com','9982345671');
insert into user_detail(first_name,last_name,role,enabled,password,email,contact_number)
values ('Rohit','sharma','SUPPLIER',true,'12345','rs@email.com','9345345671');
insert into user_detail(first_name,last_name,role,enabled,password,email,contact_number)
values ('Mahendra','shing','USER',true,'admin','ms@email.com','9456765671');

create table product (
	id IDENTITY,
	code varchar(20),
	name varchar(50),
	brand varchar(50),
	description varchar(255),
	unit_price decimal(10,2),
	quantity int,
	is_active boolean,
	category_id int,
	supplier_id int,
	purchases int default 0,
	views int default 0,
	constraint pk_product_id primary key(id),
	constraint fk_product_category_id foreign key (category_id) references category(id),
	constraint fk_product_supplier_id foreign key (supplier_id) references user_detail(id),
);

insert into product(code,name,brand,description,unit_price,quantity,is_active,category_id,supplier_id)
values('PRD123TX','macbook','apple','this is the macbook',54000,5,true,1,2);
insert into product(code,name,brand,description,unit_price,quantity,is_active,category_id,supplier_id)
values('RTD123TX','pavilion','hp','this is the pavilion',45000,3,true,1,3);
insert into product(code,name,brand,description,unit_price,quantity,is_active,category_id,supplier_id)
values('DERD123TX','samsung','samsung','this is the mobile',11000,4,true,3,3);
insert into product(code,name,brand,description,unit_price,quantity,is_active,category_id,supplier_id)
values('TTD123TX','igoTV','igo','this is the igoTV',60000,2,true,2,2);

create table cart_line(
	id identity,
	cart_id int,
	total decimal(10,2),
	product_id int,
	product_count int,
	buying_price decimal(10,2),
	is_available boolean,
	constraint pk_cartline_id primary key(id),
	constraint fk_cartline_cart_id foreign key (cart_id) references cart(id),
	constraint fk_cartline_product_id foreign key (product_id) references product(id),
);