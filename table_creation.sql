create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table movie (
	movie_id SERIAL primary key,
	title VARCHAR(100),
	run_time_minutes INTEGER,
	rating VARCHAR(10)
);

create table conc_inventory (
	product_id SERIAL primary key,
	quant_rem INTEGER
);

create table concession (
	product_name VARCHAR(100),
	price NUMERIC(3,2),
	quantity numeric(5,2),
	product_id INTEGER not null,
	foreign key(product_id) references conc_inventory(product_id)
);
alter table concession
add concession_id SERIAL primary key;

create table ticket (
	ticket_id SERIAL primary key,
	movie_id INTEGER not null,
	show_time TIME,
	show_date DATE,
	price numeric(3,2),
	foreign key(movie_id) references movie(movie_id)
);

