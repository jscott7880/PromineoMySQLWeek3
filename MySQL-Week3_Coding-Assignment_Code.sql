CREATE DATABASE if not exists anonsocialmedia_db;

USE anonsocialmedia_db;

DROP TABLE if exists comments;
DROP TABLE if exists posts;
DROP TABLE if exists users;

CREATE TABLE users (
	userID int(10) not null auto_increment,
    username varchar(35) not null,
    password varchar(25) not null,
    email varchar(45) not null,
    primary key (userID)
);    

CREATE TABLE comments (
	commentID int(10) not null auto_increment,
    userID int(10) not null,
    postID int(10) not null,
    timestamp DATETIME not null,
    remarks varchar(300) not null,
    primary key (commentID),
    foreign key (userID) references users(userID)
);

CREATE TABLE posts (
	postID int(10) not null auto_increment,
    userID int(10) not null,
    commentID int(10) not null,
    timestamp DATETIME not null,
    post varchar(12500) not null,
    primary key (postID),
    foreign key (userID) references users(userID),
    foreign key (commentID) references comments(commentID)
);

    
    