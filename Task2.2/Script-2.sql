create table Readers (
	Read_id INT not NULL,
	num_ticket INT not null,
	last_name VARCHAR(25) not NULL,
	surname VARCHAR(25) not NULL,
	patronymic VARCHAR(25) not NULL,
	addres VARCHAR(255) not NULL,
	phone VARCHAR(10) not null,
	primary key (Read_id)
);
create table Rent (
	Rent_id INT not null,
	Read_id INT not null,
	rent_data DATE,
	book_id INT not null,
	foreign key (Read_id) references Readers (Read_id) on delete set null,
	foreign key (book_id) references Books (Book_id) on delete set null 
);
create table Books (
	Book_id INT not null,
	title VARCHAR(255) not null,
	public_year VARCHAR(4) not null,
	volume VARCHAR(1500) not null,
	price VARCHAR(255) not null,
	instances VARCHAR(50) not null,
	foreign key (publisher_id) references publisher (publisher_id) on delete set null, 
	primary key (Book_id) 
 );
create Publisher (
	publisher_id INT not null,
	publisher_name VARCHAR(25) not null,
	city VARCHAR(25) not null,
	primary key (publisher_id)
);
create table Author (
	author_id INT not null,
	last_name_author VARCHAR(25),
	surname_author VARCHAR(25),
	patronymic_author VARCHAR(25),
	birth_year VARCHAR(10),
	primary key (author_id)
);
create table Books_Author (
	foreign key (book_id) references Books (Book_id) on delete set null,
	foreign key (author_id) references Author (author_id) on delete set null 
);