drop table if exists country cascade;

CREATE TABLE country (
    country_id serial primary key,
    name varchar unique,
    alpha_2 varchar unique,
    alpha_3 varchar unique,
    country_code varchar unique,
    region varchar,
    sub_region varchar,
    region_code int,
    sub_region_code int);
	
select * from country;
	
	
DROP TABLE IF EXISTS air_quality;

CREATE TABLE air_quality (
    alpha_3 varchar NOT NULL,
    year int,
    Value_PM float,
    Value_MR float,
    Value_CO2 float,
    Value_NOx float,
    Value_SOx float,
	FOREIGN KEY (alpha_3) REFERENCES country(alpha_3)
	);

select * from air_quality;


DROP TABLE IF EXISTS coal_plants;

CREATE TABLE coal_plants (
    country varchar(200),
	alpha_3 varchar,
    year int,
    MW_retired int,
    MW_added int,
    yearly_change int,
	FOREIGN KEY (alpha_3) REFERENCES country(alpha_3)
	);

select * from coal_plants;

DROP TABLE IF EXISTS mortality_rates;

CREATE TABLE mortality_rates (
    country varchar(200),
    alpha_3 varchar NOT NULL,
    year int,
    "Outdoor particulate matter (deaths per 100,000)" float,
    "Outdoor ozone pollution (deaths per 100,000)" float,
	FOREIGN KEY (alpha_3) REFERENCES country(alpha_3)

);

select * from mortality_rates;
