drop database if exists language_testing;
create database language_testing;
use language_testing;

create table user_role(
	id int primary key auto_increment,
	role_name varchar(40) not null
);

create table user (
	id int primary key auto_increment,
    user_name varchar(100) not null,
    user_login varchar(150) not null,
    user_password text not null,
    role_id int not null,
    language varchar(30),
    FOREIGN KEY (role_id) references user_role (id)
);

create table test(
	id int primary key auto_increment,
    user_id int, 
    created_at timestamp default current_timestamp,
    updated_at timestamp,
    started_at timestamp,
    finished_at timestamp,
    status enum ('not started', 'started', 'finish'),
    evaluation int default 0,
    FOREIGN KEY (user_id) references user (id)
);

create table level(
	id int primary key auto_increment,
    level_name varchar(50) not null
);

create table module(
	id int primary key auto_increment,
    module_name varchar(50) not null
);

create table question(
	id int primary key auto_increment,
    question_body text,
    points int check (points>0 and points<=10),
    level_id int,
    module_id int,
    creator_user_id int,
    is_avaliable boolean default true,
    FOREIGN KEY (level_id) references level (id),
    FOREIGN KEY (module_id) references module (id),
    FOREIGN KEY (creator_user_id ) references user (id)
);

create table test_question(
	test_id int not null,
	question_id int not null,
	FOREIGN KEY (test_id) references test (id),
	FOREIGN KEY (question_id) references question (id)
);

create table answer(
	id int primary key auto_increment,
    answer_body text,
    question_id int,
    is_correct boolean default false,
    FOREIGN KEY (question_id) references question (id)
);

create table file_answer(
	id int primary key auto_increment,
    url text not null,
    question_id int not null,
    FOREIGN KEY (question_id) references question (id)
);

create table content_file(
	id int primary key auto_increment,
	question_id int not null,
    url text not null,
    FOREIGN KEY (question_id) references question (id)
);

create table choosen_option(
	test_id int not null,
    question_id int not null,
    choosen_answer_id int,
    file_answer_id int,
    FOREIGN KEY (test_id) references test (id),
    FOREIGN KEY (question_id) references question (id),
    FOREIGN KEY ( choosen_answer_id ) references answer (id),
    FOREIGN KEY (file_answer_id) references file_answer(id)
);
