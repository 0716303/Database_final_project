create table steam_support_info(
	steam_appid int not NULL,
    website varchar(500),
    support_url varchar(500),
    support_email varchar(500),
    primary key (steam_appid)
    );
    
load data local infile './steam_support_info.csv'
into table steam_support_info
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;