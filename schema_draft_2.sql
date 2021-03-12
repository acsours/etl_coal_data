drop table if exists country;

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
    LOCATION varchar(200)NOT NULL,
    TIME int,
    Value_PM int,
    Value_MR int,
    Value_CO2 int,
    Value_NOx int,
    Value_SOx int,
	FOREIGN KEY (LOCATION) REFERENCES country(alpha_3)
	);
--add country_id?

select * from air_quality;


DROP TABLE IF EXISTS coal_plants;

CREATE TABLE coal_plants (
    -- is this a foreign key?
    country varchar(200),
    -- is this a foreign key?
    year int,
    MW_retired int,
    MW_added int,
    yearly_change int,
	FOREIGN KEY (country) REFERENCES country(alpha_3)
	);

select * from coal_plants;

DROP TABLE IF EXISTS mortality_rates;

CREATE TABLE mortality_rates (
    -- entity?
    country varchar(200) NOT NULL,
    country_code varchar(200),
    year int,
    deaths_total_air_pollution int,
    deaths_outdoor_air_pollution int,
    deaths_ozone_pollution int,
    region varchar(200),
	FOREIGN KEY (country) REFERENCES country(name),
	FOREIGN KEY (country_code) REFERENCES country(alpha_3)

);

select * from mortality_rates;
