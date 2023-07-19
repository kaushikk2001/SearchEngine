create database searchengineapp;
show databases;
use searchengineapp;
create table pages(
	pageTitle varchar(200),
    pageLink text,
    pageText mediumtext
);

select * from pages;

 select pageTitle,pageLink,(length(pageText)-length(replace(lower(pageText),'java','')))/length('java') as countoccurence from pages;
 
 create table history(
	keyword text,
    link text
 );
