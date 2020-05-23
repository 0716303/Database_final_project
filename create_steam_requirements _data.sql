create table steam_requirements_data(
	steam_appid int not NULL,
    pc_requirements varchar(500),
    mac_requirements varchar(500),
    linux_requirements varchar(500),
    minimum varchar(500),
    recommended varchar(500),
    primary key (steam_appid)
    );
    
load data local infile './steam_requirements_data.csv' into table steam_requirements_data
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;