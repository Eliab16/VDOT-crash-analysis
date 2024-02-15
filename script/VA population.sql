select * from va_county where virginia_geographical_area in('Accomack County, Virginia', 'Albemarle County, Virginia');

ALTER TABLE va_county
RENAME COLUMN virginia_geographical_area TO LOCALITY;

UPDATE va_county
SET locality = REPLACE(locality,',Virginia','')
WHERE locality LIKE '%,Virginia';

  
