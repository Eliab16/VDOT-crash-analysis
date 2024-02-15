CREATE TABLE crash_data(
	LATITUDE NUMERIC (9,6),
			  LONGITUDE NUMERIC (10,6),
			  DOCUMENT_NBR INTEGER,
			  CRASH_YEAR SMALLINT,
			  CRASH_DT TIMESTAMP WITH TIME ZONE,
			  CRASH_MILITARY_TM INT,
			  CRASH_SEVERITY VARCHAR(4),
			  CRASH_SEVERITY_DESC VARCHAR(4),
			   K_PEOPLE SMALLINT,
			   A_PEOPLE SMALLINT,
			   B_PEOPLE SMALLINT,
			   C_PEOPLE SMALLINT,
			   PERSONS_INJURED SMALLINT,
			   PEDESTRIANS_KILLED SMALLINT,
			   PEDESTRIANS_INJURED SMALLINT,
			   VEH_COUNT SMALLINT,
			   COLLISION_TYPE_CD INT,
			   COLLISION_TYPE_DESC VARCHAR(20),
			   WEATHER_CONDITION_CD INT,
			   WEATHER_CONDITION_DESC VARCHAR(10),
			   LIGHT_CONDITION_CD INT,
			   LIGHT_CONDITION_DESC VARCHAR(10),
			   ROADWAY_SURFACE_COND_CD INT,
			   ROADWAY_SURFACE_COND_DESC VARCHAR(12),
			   RELATION_TO_ROADWAY_CD INT,
			   RELATION_TO_ROADWAY_DESC VARCHAR(50),
			   ROADWAY_ALIGNMENT_CD INT, 
			   ROADWAY_ALIGNMENT_DESC VARCHAR(50),
			   ROADWAY_SURFACE_TYPE_CD INT,
			   ROADWAY_SURFACE_TYPE_DESC VARCHAR(50),
			   ROADWAY_DEFECT_CD INT,
			   ROADWAY_DEFECT_DESC VARCHAR(50),
			   ROADWAY_DESC_CD INT,
			   ROADWAY_DESCRIPTION VARCHAR(50),
			   INTERSECTION_TYPE_CD INT,
			   INTERSECTION_TYPE_DESC VARCHAR(50),
			   TRAFFIC_CONTROL_TYPE_CD INT,
			   TRAFFIC_CONTROL_TYPE_DESC VARCHAR(40),
			   TRFC_CTRL_STATUS_TYPE_CD VARCHAR(40),
			   TRFC_CTRL_STATUS_TYPE_DESC VARCHAR(45),
			   WORK_ZONE_RELATED_CD INT,
			   WORK_ZONE_RELATED_IND VARCHAR(4),
			   WORK_ZONE_LOCATION_CD VARCHAR(20),
			   WORK_ZONE_LOCATION_DESC VARCHAR(20),
			   WORK_ZONE_TYPE_CD VARCHAR(25),
			   WORK_ZONE_TYPE_DES VARCHAR(20),
			   SCHOOL_ZONE_CD int,
			   SCHOOL_ZONE_DESC VARCHAR(20),
			   FIRST_HARMFUL_EVENT_CD INT,
			   FIRST_HARMFUL_EVENT_DESC VARCHAR(45),
			   FIRST_HARMFUL_EVENT_LOC_CD VARCHAR(12),
			   FIRST_HARMFUL_EVENT_LOC_DESC VARCHAR(14),
			   ALCOHOL_NOTALCOHOL VARCHAR(6),
			   ANIMAL VARCHAR(4),
			   BELTED_UNBELTED VARCHAR(20),
			   BIKE_NONBIKE VARCHAR(24),
			   DISTRACTED_NOTDISTRACTED VARCHAR(20),
			   DROWSY_NOTDROWSY VARCHAR(24),
			   DRUG_NODRUG VARCHAR(12),
			   GR_NOGR VARCHAR(24),
			   HITRUN_NOT_HITRUN VARCHAR(12),
			   LGTRUCK_NONLGTRUCK VARCHAR(12),
			   MOTOR_NONMOTOR VARCHAR(10),
			   PED_NONPED VARCHAR(24),
			   SPEED_NOTSPEED VARCHAR(12),
			   SPEED_DIFF_MAX INT,
			   RD_TYPE VARCHAR(12),
			   INTERSECTION_ANALYSIS VARCHAR(24),
			   SENIOR_NOTSENIOR VARCHAR(12),
			   YOUNG_NOTYOUNG VARCHAR(20),
			   MAINLINE_YN VARCHAR(12),
			   NIGHT VARCHAR(8),
			   VDOT_DISTRICT_CD INT,
			   VDOT_DISTRICT_DESC VARCHAR(18),
			   JURIS_CODE INT,
			   JURIS_DESC VARCHAR(40),
			   FIPS INT,
			   LOCALITY VARCHAR(40),
			   ROADWAY_FUNCTIONAL_CLASSIFICATION_CD INT,
			   ROADWAY_FUNCTIONAL_CLASSIFICATION_DESC VARCHAR(40),
			   FACILITY_TYPE_CD INT,
			   FACILITY_TYPE_DESC VARCHAR(40),
			   AREA_TYPE VARCHAR(40),
			   SYSTEM VARCHAR(40),
			   VSP INT,
			   OWNERSHIP_CD INT,
			   OWNERSHIP_DESC VARCHAR(45),
			   PLAN_DISTRICT VARCHAR(40),
			   MPO_NAME VARCHAR(45),
			   RTE_NM FLOAT,
			   RNS_MP INT,
			   NODE INT,
	           OFFSET VARCHAR (40),
			   NODE_TOTAADT INT,
		       SEG_TOTAADT INT,
			   BASETYPEDESC INT,
			   CURBGUTTERDESC INT,
			   RURALURBANDESC INT,
			   ACCESS_CONTROL INT,
			   SURFACEDESC INT,
			   GOVCONDESC INT,
			   SIDEWALKDESC INT,
			   TRUCKCOMMR INT,
			   NUMBEROFLANE INT,
			   CARSPEEDLIMIT INT,
			   PAVEMENT_CONDITIONVALUE INT,
			   PAVEMENT_ROUGHNESSVALUE INT,
			   PAVEMENT_WIDTH INT,
			   RIGHTSHOULDERWIDTH INT,
			   LEFTSHOULDERWIDTH INT,
			   MEDIAN_TYPE INT,
			   MEDIAN_TYPEDESC INT,
			   MEDIAN_LEFTSHOULDERWIDTH INT,
			   MEDIAN_RIGHTSHOULDERWIDTH INT,
			   MEDIAN_WIDTHMAX INT,
			   MEDIAN_WIDTHMIN INT,
			   LOAD_DATE SMALLINT);
ALTER TABLE crash_data ALTER COLUMN WEATHER_CONDITION_DESC TYPE varchar (50);	

ALTER TABLE crash_data ALTER COLUMN LIGHT_CONDITION_DESC TYPE varchar (50);
ALTER TABLE crash_data ALTER COLUMN RTE_NM TYPE varchar (50);
ALTER TABLE crash_data ALTER COLUMN RNS_MP TYPE float;
ALTER TABLE crash_data ALTER COLUMN COLLISION_TYPE_DESC TYPE varchar (75);

ALTER TABLE crash_data ALTER COLUMN SCHOOL_ZONE_DESC TYPE varchar (75);

ALTER TABLE crash_data ALTER COLUMN FIRST_HARMFUL_EVENT_LOC_DESC TYPE varchar (75);
ALTER TABLE crash_data ALTER COLUMN ROADWAY_SURFACE_COND_DESC TYPE varchar (75);
ALTER TABLE crash_data ALTER COLUMN WORK_ZONE_LOCATION_DESC TYPE varchar (75);
ALTER TABLE crash_data ALTER COLUMN WORK_ZONE_TYPE_DES TYPE varchar (75);
ALTER TABLE crash_data ALTER COLUMN WORK_ZONE_TYPE_DES TYPE varchar (75);
ALTER TABLE crash_data ALTER COLUMN ROADWAY_FUNCTIONAL_CLASSIFICATION_DESC TYPE varchar (75);
ALTER TABLE crash_data ALTER COLUMN PAVEMENT_ROUGHNESSVALUE TYPE float;
ALTER TABLE crash_data ALTER COLUMN ROADWAY_FUNCTIONAL_CLASSIFICATION_DESC TYPE varchar (75);
ALTER TABLE crash_data ALTER COLUMN RELATION_TO_ROADWAY_DESC TYPE varchar (200);
ALTER TABLE crash_data ALTER COLUMN TRAFFIC_CONTROL_TYPE_DESC TYPE varchar (200);
ALTER TABLE crash_data ALTER COLUMN SIDEWALKDESC TYPE varchar (200);
ALTER TABLE crash_data ALTER COLUMN TRAFFIC_CONTROL_TYPE_CD TYPE varchar (200);
ALTER TABLE crash_data ALTER COLUMN WEATHER_CONDITION_CD TYPE varchar (200)
ALTER TABLE crash_data ALTER COLUMN COLLISION_TYPE_CD TYPE varchar (200)


SELECT *
from crash_data
LIMIT 10;

-- check latitude and longitude are out-of_range-value

UPDATE crash_data
SET Latitude = NULL 
WHERE Latitude <-90 OR Latitude > 90;


UPDATE crash_data
SET Latitude = NULL 
WHERE Longitude < -180 OR Longitude > 180;

-- check for DOCUMENT_NBR if it is unique or any duplicate rows

SELECT DOCUMENT_NBR,count(*)
FROM crash_data
GROUP BY DOCUMENT_NBR
HAVING COUNT(*) >1 ;

-- Check if crash_year matches the year extracted from crash_date

SELECT*,
       EXTRACT(YEAR FROM CRASH_DT)
AS extracted_year,
          crash_year = EXTRACT(YEAR FROM CRASH_DT)AS year_matches
FROM crash_data;	  


DELETE FROM crash_data
WHERE CRASH_YEAR < 2015 OR
CRASH_YEAR > 2023;

-- check nullvalues for CRASH_SEVERITY column


UPDATE crash_data
SET CRASH_SEVERITY = 'U'
WHERE CRASH_SEVERITY IS NULL;

UPDATE crash_data
SET CRASH_SEVERITY=CASE
   WHEN CRASH_SEVERITY ='X' THEN 'O'
   ELSE CRASH_SEVERITY
END
WHERE CRASH_SEVERITY NOT IN ('K','A','B','C','O','U');


-- delete unwanted columns

ALTER TABLE crash_data
DROP COLUMN NODE_TOTAADT,
DROP COLUMN SEG_TOTAADT,
DROP COLUMN	BASETYPEDESC,
DROP COLUMN	CURBGUTTERDESC,
DROP COLUMN	RURALURBANDESC,
DROP COLUMN	ACCESS_CONTROL,
DROP COLUMN	SURFACEDESC,
DROP COLUMN	GOVCONDESC,
DROP COLUMN	SIDEWALKDESC,
DROP COLUMN	TRUCKCOMMR,
DROP COLUMN	NUMBEROFLANE,
DROP COLUMN	CARSPEEDLIMIT,
DROP COLUMN	PAVEMENT_CONDITIONVALUE,
DROP COLUMN	PAVEMENT_ROUGHNESSVALUE,
DROP COLUMN	PAVEMENT_WIDTH,
DROP COLUMN RIGHTSHOULDERWIDTH,
DROP COLUMN	LEFTSHOULDERWIDTH,
DROP COLUMN	MEDIAN_TYPE,
DROP COLUMN	MEDIAN_TYPEDESC,
DROP COLUMN MEDIAN_LEFTSHOULDERWIDTH,
DROP COLUMN	MEDIAN_RIGHTSHOULDERWIDTH,
DROP COLUMN	MEDIAN_WIDTHMAX,
DROP COLUMN	MEDIAN_WIDTHMIN,
DROP COLUMN	LOAD_DATE;

ALTER TABLE crash_data
DROP COLUMN crash_severity_desc

ALTER TABLE crash_data
DROP COLUMN mpo_name,
DROP COLUMN rte_nm,
DROP COLUMN rns_mp;


-- Extracting month and date from crash_dt column

ALTER TABLE crash_data
ADD COLUMN crash_month INTEGER,
ADD COLUMN crash_day INTEGER;


UPDATE crash_data
SET crash_month = EXTRACT(MONTH FROM crash_dt),
    crash_day = EXTRACT(DAY FROM crash_dt);

SELECT *
FROM crash_data;
   
   
CREATE TABLE crash_data1 AS   
 SELECT*,
     EXTRACT (MONTH FROM crash_dt) as crash_month,
	 EXTRACT (DAY FROM crash_dt) as crash_day
FROM crash_data;

-- my secondary data for population estimate is from April1 2020 to July12022
-- Delete data out of this year.


DELETE FROM crash_data
WHERE NOT(
	    (crash_year>2020 OR
(crash_year =2020 AND crash_month>=4)) AND
  (crash_year < 2022 OR 
(crash_year = 2022 AND crash_month <=7 AND crash_day <=1)));


--  cleaning Null values
select*from crash_data;

SELECT * FROM crash_data
WHERE latitude IS NULL;

UPDATE crash_data SET latitude = 
(SELECT AVG(latitude) FROM crash_data WHERE latitude IS NOT NULL) 
WHERE latitude IS NULL;


SELECT * FROM crash_data
WHERE longitude IS NULL;

UPDATE crash_data SET longitude = 
(SELECT AVG(longitude) FROM crash_data WHERE longitude IS NOT NULL) 
WHERE longitude IS NULL;


SELECT * FROM crash_data
WHERE document_nbr IS NULL;


SELECT * FROM crash_data
WHERE document_nbr IS NULL;


SELECT document_nbr, COUNT(document_nbr) FROM crash_data 
GROUP BY document_nbr 
HAVING COUNT(document_nbr)> 1

SELECT * FROM crash_data
WHERE crash_year IS NULL;


UPDATE crash_data
SET crash_year = COALESCE(crash_year,0)

UPDATE crash_data
SET crash_day = COALESCE(crash_day,0)

UPDATE crash_data
SET crash_month = COALESCE(crash_month,0)


SELECT * FROM crash_data;
WHERE crash_severity_desc IS NULL;


SELECT * FROM crash_data
WHERE k_people IS NULL;

UPDATE crash_data
SET k_people = COALESCE(k_people,0);


UPDATE crash_data
SET a_people = COALESCE(a_people,0);

UPDATE crash_data
SET b_people = COALESCE(b_people,0);

UPDATE crash_data
SET c_people = COALESCE(c_people,0);


UPDATE crash_data
SET 
    persons_injured = COALESCE(persons_injured,0),
    pedestrians_killed = COALESCE(pedestrians_killed,0),
    pedestrians_injured = COALESCE(pedestrians_injured,0),
    veh_count = COALESCE(veh_count,0)


UPDATE crash_data
SET 
    collision_type_desc =COALESCE(collision_type_desc,''),
    weather_condition_cd =COALESCE(weather_condition_cd ,''),
    weather_condition_desc =COALESCE(weather_condition_desc ,''),
    light_condition_desc =COALESCE(light_condition_desc,''),
    roadway_surface_cond_desc =COALESCE(roadway_surface_cond_desc,''),
    relation_to_roadway_desc =COALESCE(relation_to_roadway_desc,''),
    roadway_alignment_desc = COALESCE(roadway_alignment_desc,''),
    roadway_defect_desc =COALESCE(roadway_defect_desc,''),
    traffic_control_type_desc =COALESCE(traffic_control_type_desc,''),
    trfc_ctrl_status_type_desc =COALESCE(trfc_ctrl_status_type_desc,''),
    work_zone_related_ind = COALESCE (work_zone_related_ind,''),
    work_zone_location_cd = COALESCE (work_zone_location_cd,''),
    work_zone_location_desc = COALESCE (work_zone_location_desc,''),
    work_zone_type_cd= COALESCE (work_zone_type_cd,''),
--     work_zone_type_des= COALESCE (work_zone_type_des,''),
    work_zone_type_des= COALESCE (work_zone_type_des,''),
    school_zone_desc= COALESCE (school_zone_desc,''),
    first_harmful_event_loc_desc = COALESCE (first_harmful_event_loc_desc,''),
    alcohol_notalcohol = COALESCE (alcohol_notalcohol,''),
    animal = COALESCE (animal,''),
    belted_unbelted = COALESCE (belted_unbelted,''),
    bike_nonbike= COALESCE (bike_nonbike,''),
    distracted_notdistracted= COALESCE (distracted_notdistracted,''),
    drowsy_notdrowsy= COALESCE (drowsy_notdrowsy,''),
    drug_nodrug= COALESCE (drug_nodrug,''),
    gr_nogr = COALESCE (gr_nogr,''),
    hitrun_not_hitrun = COALESCE (hitrun_not_hitrun,''),
    lgtruck_nonlgtruck = COALESCE (lgtruck_nonlgtruck,''),
    motor_nonmotor= COALESCE (motor_nonmotor,''),
    ped_nonped= COALESCE (ped_nonped,''),
    speed_notspeed= COALESCE (speed_notspeed,''),
    rd_type= COALESCE (rd_type,''),
    senior_notsenior = COALESCE (senior_notsenior,''),
    young_notyoung = COALESCE (young_notyoung,''),
    mainline_yn =  COALESCE (mainline_yn,''),
    night =  COALESCE (night,''),
    juris_desc =COALESCE (juris_desc,''),
    locality =  COALESCE (locality,''),
    area_type = COALESCE (area_type,'')
WHERE  
     collision_type_desc IS NULL OR
     weather_condition_cd IS NULL OR
     weather_condition_desc IS NULL OR
     light_condition_desc IS NULL OR
     roadway_surface_cond_desc IS NULL OR
     relation_to_roadway_desc IS NULL OR
     roadway_alignment_desc IS NULL OR
     roadway_defect_desc IS NULL OR
     traffic_control_type_desc IS NULL OR
     trfc_ctrl_status_type_desc IS NULL OR
     work_zone_related_ind IS NULL OR
     work_zone_location_cd IS NULL OR
     work_zone_location_desc IS NULL OR
     work_zone_type_cd IS NULL OR
--      work_zone_type_des IS NULL OR
     work_zone_type_des IS NULL OR
     school_zone_desc IS NULL OR
     first_harmful_event_loc_desc IS NULL OR
     alcohol_notalcohol IS NULL OR
     animal IS NULL OR
     belted_unbelted IS NULL OR
     bike_nonbike IS NULL OR
     distracted_notdistracted IS NULL OR
     drowsy_notdrowsy IS NULL OR
     drug_nodrug IS NULL OR
     gr_nogr IS NULL OR
     hitrun_not_hitrun IS NULL OR
     lgtruck_nonlgtruck IS NULL OR
     motor_nonmotor IS NULL OR
     ped_nonped IS NULL OR
    speed_notspeed IS NULL OR
    rd_type IS NULL OR
    senior_notsenior IS NULL OR
    young_notyoung IS NULL OR
    mainline_yn IS NULL OR
    night IS NULL OR
    juris_desc IS NULL OR
    locality IS NULL OR
    area_type IS NULL;
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  




