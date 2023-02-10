insert into customer (
	customer_id,
	first_name,
	last_name
) values (
	420,
	'Snoop',
	'Dogg'
);

insert into movie (
	movie_id,
	title,
	run_time_minutes,
	rating
) values (
	69,
	'How High',
	592,
	'R'
);

insert into conc_inventory (
	product_id,
	quant_rem
) values (
	42,
	511
);

insert into concession (
	concession_id,
	product_name,
	price,
	quantity,
	product_id
) values (
	1,
	'twizzlers',
	5.00,
	1,
	42
);

insert into ticket (
	ticket_id,
	movie_id,
	show_time,
	show_date,
	price
) values (
	2,
	69,
	'16:20:00',
	'1991-07-19',
	9.00
);

select * from ticket