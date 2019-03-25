drop database resultanalysis;
create database resultanalysis;

\c resultanalysis

create table student(
	fname varchar(20) not null,
	lname varchar(20) not null,
	srn varchar(13) not null;
	branch char(6) not null;
	sem int,
	sec char(1);
	primary ker(fname);
);

create table faculty(
	f_name varchar(20) not null,
	l_name varchar(20) not null,
	frn varchar(13) not null,
	f_branch char(4) not null,
	primary key(frn)
);

create table precourse(
	ccode varchar(13) not null,
	cname char(6) not null,
	ccredits int,
	primary key(ccode)
);

create table spcourse(
	spcode varchar(13) not null,
	spname char(6) not null,
	spcredits int,
	primary key(spcode)
);

create table results(
	s_num varchar(13) not null;
	f_num varchar(13) not null;
	c_num varchar(13) not null;
	cbt1 int;
	cbt2 int;
	esa int;
	assign int;
	foreign key(s_num) references student(srn);
	foreign key(f_num) references faculty(frn);
	foreign key(c_num) references precourse(ccode);
);

create table gpa(
	srn varchar(13) not null;
	sem char(1) not null;
	sgpa decimal(3,2);
	cgpa decimal(3,2);
	foreign key(srn) references student(srn);
);
create table class(
	sem int not null;
	section int not null;
	branch char(1) not null;
	passpercent decimal(3,2);
);
