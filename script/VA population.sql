CREATE TABLE VA_County(Virginia_Geographical_Area VARCHAR(100),
			 Population_Estimate2020 INT,
			 Population_Esimate2021 INT,
			 Population_Estimate2022 INT);
			 
			 
	ALTER TABLE VA_County ADD COLUMN
	Population2021 INTEGER;
	
UPDATE VA_County
SET Population_Estimate2020 = 
REPLACE(Population_Estimate2020::text,',','')::INTEGER;

UPDATE VA_County
SET Population_Esimate2021 = 
REPLACE(Population_Esimate2021::text,',','')::INTEGER;
	
	
UPDATE VA_County
SET Population_Estimate2022 = 
REPLACE(Population_Estimate2022::text,',','')::INTEGER;

ALTER TABLE VA_county
DROP COLUMN temp_column,
DROP COLUMN population2021;

UPDATE VA_County
SET Population_Estimate2022 = 
REPLACE(Population_Estimate2022::text,' ','')::INTEGER;


UPDATE VA_County
SET Population_Estimate2020 = 
REPLACE(Population_Estimate2020::text,' ','')::INTEGER;


UPDATE VA_County
SET Population_Esimate2021 = 
REPLACE(Population_Esimate2021::text,' ','')::INTEGER;


UPDATE VA_County
SET Population_Estimate2020 = CAST(Population_Estimate2020 AS INTEGER);


UPDATE VA_County
SET Population_Esimate2021 = CAST(Population_Esimate2021 AS INTEGER);
	

UPDATE VA_County
SET Population_Estimate2022 = CAST(Population_Estimate2022 AS INTEGER);

copy public.va_county (virginia_geographical_area, population_estimate2020, population_esimate2021, population_estimate2022) 
FROM 'C:/Users/Dell/Documents/Population estimate.CSV'
DELIMITERS ',' CSV header;
DELIMITER ',' CSV HEADER QUOTE '\"' ESCAPE '''';""

COPY public.va_county FROM 'C:/Users/Dell/Documents/Population estimate.CSV'
DELIMITERS ',' CSV header;

select*from
VApopulation;
















