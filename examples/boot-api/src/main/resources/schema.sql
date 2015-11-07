create table book (
	id bigint generated by default as identity,
	douban_id varchar(64) not null,
	title varchar(128) not null,
	url varchar(255),
	description varchar(255),
	owner_id bigint not null,
	onboard_date date,
	status varchar(32) not null,
	borrower_id bigint null,
	borrow_date date,
    primary key (id)
);

create table account (
	id bigint generated by default as identity,
	name varchar(64) not null,
	email varchar(128),
	hash_password varchar(255),
	primary key (id)
);

create table message (
	id bigint generated by default as identity,
	receiver_id bigint null,
	message varchar(256),
	receive_date date,
	primary key (id)
);