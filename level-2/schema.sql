create table review_data (
	review_id varchar primary key not null unique,
	product_id varchar,
	product_parent integer,
	product_title varchar,
	product_category varchar,
	star_rating integer,
	helpful_votes integer,
	total_votes integer,
	vine varchar,
	verified_purchase varchar,
	review_headline varchar,
	review_body varchar,
	review_date date
);