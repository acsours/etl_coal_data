drop table if exists country cascade;

CREATE TABLE country (
    country_id int primary key NOT NULL,
    name varchar unique NOT NULL,
    alpha_2 varchar unique NOT NULL,
    alpha_3 varchar unique NOT NULL,
    country_code varchar unique NOT NULL,
    region varchar NOT NULL,
    sub_region varchar NOT NULL,
    region_code int  NOT NULL,
    sub_region_code int NOT NULL);
	
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
--add country_id?

select * from air_quality;


DROP TABLE IF EXISTS coal_plants;

CREATE TABLE coal_plants (
    country varchar(200),
	alpha_3 varchar,
    -- is this a foreign key?
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
