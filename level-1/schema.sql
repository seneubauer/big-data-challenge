create table review_id_table (
	review_id text primary key not null,
	customer_id integer,
	product_id text,
	product_parent integer,
	review_date date
);

create table products (
	product_id text primary key not null unique,
	product_title text
);

create table customers (
	customer_id int primary key not null unique,
	customer_count integer
);

create table vine_table (
	review_id text primary key,
	star_rating integer,
	helpful_votes integer,
	total_votes integer,
	vine text
);