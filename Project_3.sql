create database cricket_analysis_system;
use cricket_analysis_system;
CREATE TABLE wtc_points (
  rank_ INT,
  country_id VARCHAR (20) PRIMARY KEY,
  team VARCHAR(20) NOT NULL,
  series_played INT NOT NULL,
  tests_played INT NOT NULL,
  wins INT NOT NULL,
  losses INT NOT NULL,
  draws INT NOT NULL,
  points INT NOT NULL,
  pct DECIMAL(5,2) NOT NULL
);

INSERT INTO wtc_points (rank_,country_id, team, series_played, tests_played, wins, losses, draws, points, pct) VALUES
(1,"sa_2325",'South Africa', 6, 12, 8, 3, 1, 100, 69.44),
(2,"aus_2325" ,'Australia', 6, 19, 13, 4, 2,  154, 67.54),
(3,"ind_2325", 'India', 6, 19, 9, 8, 2,  114, 50.00),
(4,"nz_2325", 'New Zealand', 6, 14, 7, 7, 0,  81, 48.21),
(5,"eng_2325", 'England', 6, 22, 11, 10, 1,  114, 43.18);

select * from wtc_points;

CREATE TABLE batting_records (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(20),
    country VARCHAR(20),
    country_id VARCHAR(20),
    matches INT,
    innings INT,
    runs INT,
    highest_score INT,
    average DECIMAL(5,2),
    strike_rate DECIMAL(5,2),
    fifties INT,
    hundreds INT,
    sixes INT,
    fours INT,
	FOREIGN KEY (country_id) references wtc_points(country_id)
);
select * from batting_records;
INSERT INTO batting_records (
    player_id, player_name, country,  country_id,matches,
    innings, runs, highest_score, average, strike_rate,
    fifties, hundreds, sixes, fours
) VALUES
(501, 'JE Root', 'ENG',  'eng_2325', 22, 40, 1968, 262, 54.66, 65.46, 7, 7, 9, 186),
(301, 'YBK Jaiswal', 'IND',  'ind_2325', 19 , 36, 1798, 0, 52.88, 65.66, 10, 4, 39, 207),
(502, 'BM Duckett', 'ENG',  'eng_2325', 22 , 41, 1470, 153, 36.75, 84.33, 8, 2, 7, 187),
(503, 'HC Brook', 'ENG',  'eng_2325', 17 , 29, 1463, 317, 50.44, 83.36, 7, 4, 17, 144),
(201, 'UT Khawaja', 'AUS', 'aus_2325', 20, 39, 1428, 232, 39.66, 44.47, 6, 2, 5, 149),
(202, 'SPD Smith', 'AUS', 'aus_2325', 20, 37, 1403, 141, 41.26, 52.23, 5, 5, 11, 144),
(203, 'TM Head', 'AUS', 'aus_2325', 20, 36, 1197, 152, 34.20, 80.71, 5, 3, 13, 153),
(504, 'Z Crawley', 'ENG', 'eng_2325', 19, 34, 1175, 189, 34.55, 77.86, 8, 1, 10, 152),
(401, 'KS Williamson', 'NZ', 'nz_2325', 11, 22, 1152, 156, 54.85, 54.13, 4, 5, 6, 134),
(505, 'OJ Pope', 'ENG', 'eng_2325', 19, 34, 1084, 196, 31.88, 68.78, 4, 3, 5, 128),
(204, 'AT Carey', 'AUS', 'aus_2325', 20, 32, 1020, 156, 35.17, 64.55, 5, 1, 9, 109),
(506, 'BA Stokes', 'ENG', 'eng_2325', 18, 32, 1007, 155, 33.56, 65.30, 7, 1, 24, 93),
(402, 'R Ravindra', 'NZ', 'nz_2325', 12, 24, 984, 240, 42.78, 60.14, 4, 2, 11, 103),
(205, 'M Labuschagne', 'AUS', 'aus_2325', 20, 38, 974, 111, 27.82, 45.62, 8, 1, 2, 108),
(302, 'Shubman Gill', 'IND', 'ind_2325', 16, 29, 972, 0, 37.38, 61.48, 3, 3, 18, 102),
(303, 'RG Sharma', 'IND', 'ind_2325', 17, 31, 864, 131, 28.80, 61.18, 4, 3, 18, 103),
(206, 'MR Marsh', 'AUS', 'aus_2325', 14, 25, 823, 118, 35.78, 67.79, 6, 1, 15, 110),
(304, 'V Kohli', 'IND', 'ind_2325', 14, 25, 751, 121, 32.65, 58.30, 3, 2, 6, 77),
(403, 'DJ Mitchell', 'NZ', 'nz_2325', 13, 25, 743, 84, 30.95, 50.82, 6, 0, 12, 72),
(101, 'DG Bedingham', 'SA', 'sa_2325', 13, 23, 711, 110, 35.55, 65.52, 3, 1, 16, 80),
(102, 'T Bavuma', 'SA', 'sa_2325', 8, 13, 711, 113, 59.25, 53.13, 5, 2, 9, 63),
(103, 'AK Markram', 'SA', 'sa_2325', 11, 20, 708, 136, 37.26, 63.55, 3, 2, 4, 91),
(404, 'TWM Latham', 'NZ', 'nz_2325', 14, 28, 684, 86, 24.42, 50.22, 4, 0, 1, 81),
(305, 'RR Pant', 'IND', 'ind_2325', 10, 19, 677, 109, 37.61, 73.58, 4, 1, 18, 74),
(405, 'GD Phillips', 'NZ', 'nz_2325', 14, 25, 676, 87, 33.80, 76.29, 4, 0, 24, 65),
(306, 'RA Jadeja', 'IND', 'ind_2325', 15, 22, 664, 112, 31.61, 46.79, 4, 1, 12, 55),
(507, 'JL Smith', 'ENG', 'eng_2325', 9, 15, 637, 111, 42.46, 72.30, 4, 1, 15, 63),
(307, 'KL Rahul', 'IND', 'ind_2325', 11, 20, 615, 101, 34.16, 58.46, 4, 1, 8, 69),
(207, 'DA Warner', 'AUS', 'aus_2325', 8, 16, 584, 164, 36.50, 60.51, 3, 1, 5, 66),
(508, 'JM Bairstow', 'ENG', 'eng_2325', 10, 19, 560, 0, 31.11, 79.09, 3, 0, 10, 71),
(208, 'PJ Cummins', 'AUS', 'aus_2325', 18, 30, 523, 0, 20.11, 59.56, 1, 0, 11, 51),
(104, 'T Stubbs', 'SA', 'sa_2325', 10, 18, 510, 122, 30.00, 50.29, 1, 2, 8, 42),
(105, 'K Verreynne', 'SA', 'sa_2325', 11, 16, 505, 114, 36.07, 64.00, 1, 3, 10, 50),
(106, 'T de Zorzi', 'SA', 'sa_2325', 9, 16, 486, 177, 30.37, 56.05, 1, 1, 6, 49),
(406, 'WA Young', 'NZ', 'nz_2325', 7, 14, 481, 71, 40.08, 47.71, 4, 0, 5, 56),
(407, 'TA Blundell', 'NZ', 'nz_2325', 14, 26, 480, 115, 20.00, 69.46, 1, 1, 11, 50),
(107, 'RD Rickelton', 'SA', 'sa_2325', 7, 11, 473, 259, 47.30, 57.26, 0, 2, 3, 56),
(408, 'DP Conway', 'NZ', 'nz_2325', 11, 22, 433, 91, 19.68, 51.24, 3, 0, 6, 52),
(209, 'C Green', 'AUS', 'aus_2325', 8, 15, 409, 0, 31.46, 52.23, 0, 1, 7, 51),
(210, 'MA Starc', 'AUS', 'aus_2325', 19, 30, 378, 0, 15.75, 43.24, 1, 0, 4, 39),
(308, 'R Ashwin', 'IND', 'ind_2325', 14, 20, 374, 113, 18.70, 55.90, 1, 1, 3, 42),
(309, 'SN Khan', 'IND', 'ind_2325', 6, 11, 371, 150, 37.10, 74.94, 3, 1, 8, 44),
(509, 'AAP Atkinson', 'ENG', 'eng_2325', 11, 16, 352, 118, 23.46, 79.10, 0, 1, 9, 39),
(409, 'MJ Santner', 'NZ', 'nz_2325', 6, 11, 300, 76, 30.00, 64.23, 2, 0, 14, 29),
(310, 'K Nitish Kumar Reddy', 'IND', 'ind_2325', 5, 9, 298, 114, 37.25, 64.22, 0, 1, 8, 30),
(108, 'PWA Mulder', 'SA', 'sa_2325', 7, 10, 296, 0, 42.28, 51.47, 1, 1, 8, 29),
(510, 'CR Woakes', 'ENG', 'eng_2325', 12, 18, 295, 62, 19.66, 61.33, 1, 0, 2, 33),
(410, 'TG Southee', 'NZ', 'nz_2325', 13, 22, 269, 65, 12.22, 79.35, 1, 0, 15, 18),
(511, 'JG Bethell', 'ENG', 'eng_2325', 3, 6, 260, 96, 52.00, 75.14, 3, 0, 5, 38),
(211, 'NM Lyon', 'AUS', 'aus_2325', 17, 24, 251, 41, 12.55, 57.17, 0, 0, 1, 28);

delete from batting_records;
set sql_safe_updates = 0;
select * from batting_records;

CREATE TABLE bowling_records (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(20),
    country VARCHAR(20),
    country_id VARCHAR(20),
    matches INT,
    innings INT,
    overs_bowled FLOAT,
    wickets INT,
    average DECIMAL(5,2),
    maiden_overs INT,
    economy FLOAT,
    strike_rate DECIMAL(5,2),
	FOREIGN KEY (country_id) references wtc_points(country_id)
);
select * from bowling_records;
INSERT INTO bowling_records (player_id,player_name,country,country_id,matches,innings,overs_bowled,wickets,
average,maiden_overs,economy,strike_rate)
VALUES
(208, 'PJ Cummins', 'AUS', 'aus_2325', 18, 35, 563.5, 80, 23.48, 76, 3.33, 42.28),
(311, 'JJ Bumrah', 'IND', 'ind_2325', 15, 28, 393.4, 77, 15.09, 91, 2.95, 30.67),
(210, 'MA Starc', 'AUS', 'aus_2325', 19, 37, 538, 77, 26.89, 81, 3.84, 41.92),
(211, 'NM Lyon', 'AUS', 'aus_2325', 17, 30, 546.5, 66, 25.18, 76, 3.03, 49.71),
(308, 'R Ashwin', 'IND', 'ind_2325', 14, 26, 445.3, 63, 24.55, 61, 3.47, 42.42),
(212, 'JR Hazlewood', 'AUS', 'aus_2325', 14, 26, 393.2, 59, 20.45, 88, 3.06, 40.00),
(109, 'K Rabada', 'SA', 'sa_2325', 11, 22, 330.3, 56, 18.73, 64, 3.17, 35.41),
(306, 'RA Jadeja', 'IND', 'ind_2325', 15, 26, 418.1, 55, 23.43, 70, 3.08, 45.61),
(509, 'AAP Atkinson', 'ENG', 'eng_2325', 11, 21, 308.4, 52, 22.15, 52, 3.73, 35.61),
(510, 'CR Woakes', 'ENG', 'eng_2325', 12, 24, 374, 51, 21.88, 80, 2.98, 44.00),
(512, 'Shoaib Bashir', 'ENG', 'eng_2325', 15, 25, 524.3, 49, 40.16, 37, 3.75, 64.22),
(411, 'MJ Henry', 'NZ', 'nz_2325', 9, 18, 271.5, 48, 18.58, 56, 3.28, 33.97),
(312, 'Mohammed Siraj', 'IND', 'ind_2325', 17, 32, 388.1, 48, 29.47, 69, 3.64, 48.52),
(110, 'KA Maharaj', 'SA', 'sa_2325', 9, 15, 307.5, 41, 20.95, 60, 2.79, 45.04),
(412, 'AY Patel', 'NZ', 'nz_2325', 7, 12, 263.5, 37, 26.4, 34, 3.7, 42.78),
(413, 'W O''Rourke', 'NZ', 'nz_2325', 10, 18, 237.2, 36, 24.8, 52, 3.76, 39.55),
(111, 'M Jansen', 'SA', 'sa_2325', 7, 14, 192.2, 33, 21.54, 32, 3.69, 34.96),
(409, 'MJ Santner', 'NZ', 'nz_2325', 6, 11, 218.1, 33, 19.84, 38, 3.00, 39.66),
(405, 'GD Phillips', 'NZ', 'nz_2325', 14, 19, 267, 31, 31.06, 23, 3.6, 51.67),
(513, 'MA Wood', 'ENG', 'eng_2325', 9, 17, 241.5, 29, 29.00, 30, 3.47, 50.03),
(514, 'BA Carse', 'ENG', 'eng_2325', 5, 10, 156.1, 27, 19.85, 22, 3.43, 34.7),
(213, 'SM Boland', 'AUS', 'aus_2325', 5, 10, 148.4, 23, 22.08, 30, 3.41, 38.78),
(515, 'SCJ Broad', 'ENG', 'eng_2325', 5, 10, 184.2, 22, 28.4, 33, 3.39, 50.27),
(313, 'Kuldeep Yadav', 'IND', 'ind_2325', 5, 10, 135.4, 22, 23.09, 13, 3.74, 37.0),
(516, 'TW Hartley', 'ENG', 'eng_2325', 5, 9, 250.4, 22, 36.13, 30, 3.17, 68.36),
(112, 'D Paterson', 'SA', 'sa_2325', 5, 10, 162.0, 21, 23.33, 32, 3.02, 46.28),
(410, 'TG Southee', 'NZ', 'nz_2325', 13, 25, 313.4, 21, 52.66, 57, 3.52, 89.61),
(517, 'JM Anderson', 'ENG', 'eng_2325', 9, 17, 290.4, 19, 43.15, 67, 2.82, 91.78),
(314, 'Washington Sundar', 'IND', 'ind_2325', 5, 9, 107.5, 19, 18.00, 9, 3.17, 34.05),
(518, 'MJ Leach', 'ENG', 'eng_2325', 4, 8, 171.2, 18, 33.27, 20, 3.49, 57.11),
(501, 'JE Root', 'ENG', 'eng_2325', 22, 27, 211.5, 17, 43.11, 26, 3.46, 74.76),
(214, 'MP Kuhnemann', 'AUS', 'aus_2325', 2, 4, 92.3, 16, 17.18, 19, 2.97, 34.68),
(506, 'BA Stokes', 'ENG', 'eng_2325', 18, 18, 159.1, 16, 35.50, 20, 3.56, 59.68),
(315, 'Akash Deep', 'IND', 'ind_2325', 7, 12, 146.5, 15, 35.20, 27, 3.59, 58.73),
(519, 'Rehan Ahmed', 'ENG', 'eng_2325', 4, 7, 136.1, 15, 36.66, 16, 4.03, 54.46),
(113, 'N Burger', 'SA', 'sa_2325', 3, 6, 62.4, 14, 16.92, 14, 3.78, 26.85),
(520, 'MJ Potts', 'ENG', 'eng_2325', 4, 8, 124.0, 13, 29.76, 30, 3.12, 57.23),
(108, 'PWA Mulder', 'SA', 'sa_2325', 7, 12, 104.0, 12, 26.50, 19, 3.05, 52.00),
(114, 'DL Piedt', 'SA', 'sa_2325', 3, 5, 100.3, 11, 31.45, 11, 3.44, 54.81),
(521, 'OE Robinson', 'ENG', 'eng_2325', 4, 6, 115.4, 10, 33.80, 28, 2.92, 69.40),
(209, 'C Green', 'AUS', 'aus_2325', 8, 12, 87.4, 10, 39.00, 11, 4.44, 52.60),
(206, 'MR Marsh', 'AUS', 'aus_2325', 14, 20, 105.0, 9, 48.66, 9, 4.17, 70.00),
(522, 'MM Ali', 'ENG', 'eng_2325', 4, 7, 126.0, 9, 51.44, 15, 3.67, 84.00),
(215, 'T Murphy', 'AUS', 'aus_2325', 3, 6, 55.2, 8, 33.25, 1, 4.80, 41.50),
(316, 'M Prasidh Krishna', 'IND', 'ind_2325', 3, 5, 55.0, 8, 29.62, 7, 4.30, 41.25),
(203, 'TM Head', 'AUS', 'aus_2325', 20, 17, 71.4, 8, 35.12, 3, 3.92, 53.75),
(414, 'KA Jamieson', 'NZ', 'nz_2325', 3, 5, 66.0, 8, 22.25, 19, 2.69, 49.50),
(115, 'N Brand', 'SA', 'sa_2325', 2, 2, 39.0, 8, 21.37, 2, 4.38, 29.25),
(415, 'NG Smith', 'NZ', 'nz_2325', 2, 4, 57.2, 7, 48.42, 1, 5.91, 49.14),
(116, 'L Ngidi', 'SA', 'sa_2325', 3, 5, 43.5, 7, 23.42, 7, 3.74, 37.57);
select * from wtc_points;
set sql_safe_updates = 0;
alter table wtc_points
add column captain varchar(20);
UPDATE wtc_points SET Captain = 'Rohit Sharma'
 WHERE team= 'INDIA';
UPDATE wtc_points SET Captain = 'Pat Cummins'   WHERE team = 'AUSTRALIA';
UPDATE wtc_points SET Captain = 'Ben Stokes'     WHERE team = 'ENGLAND';
UPDATE wtc_points SET Captain = 'Temba Bavuma'   WHERE team = 'SOUTH AFRICA';
UPDATE wtc_points SET Captain = 'Kane Williamson' WHERE team = 'NEW ZEALAND';
use cricket_analysis_system;
select * from wtc_points;

-- -------------------------------------------------------------------------------------------------------------------------------
#Q1:-To find the team which is highest ranked 1st in the table and rank all the other teams as per rankings?
select rank_,team,pct
from wtc_points
order by rank_ asc;

-- ---------------------------------------------------------------------------------------
#Q2:-List all the players who scored more than 500 runs in the wtc cycle?
select player_id,player_name,runs,
country from batting_records
where runs >500;

-- -------------------------------------------------------------------------------------------------------------
#Q3:-Display the top 5 bowler who has taken the most wickets?
select player_id,player_name,
country,wickets 
from bowling_records
order by wickets desc
limit 5;

-- -------------------------------------------------------------------------------------------------
#Q4:-Show the average runs by each team in the wtc cycle?
select country,sum(runs) as average_runs
from batting_records
group by country
order by average_runs desc;

-- -------------------------------------------------------------------------------------------------------------------------
#Q5:-List all the bowlers who have bowled more than 50 maiden overs in the wtc cycle?
select player_id,player_name,country,
maiden_overs from bowling_records
where maiden_overs >50;

-- -------------------------------------------------------------------------------------------------------------------------
#Q6:-Find the players who are all rounders their batting and bowling stats?
select p.player_id,p.player_name,p.country,
p.runs,bw.wickets from batting_records as p
join bowling_records as bw
on p.player_id = bw.player_id;

-- -------------------------------------------------------------------------------------------------------------------------------------
#Q7:-List top 5 players from the top 3 Wtc teams and their batting records?
select p.player_id,p.player_name,p.country,
w.rank_ as team_rank,w.country_id 
from batting_records as p
join wtc_points as w
on p.country_id = w.country_id
where rank_ <=3
order by rank_ asc;

-- ------------------------------------------------------------------------------------------------------------------------
#Q8:-List the bowlers who have the economy rate less than 3?
select player_id,player_name,country,
economy from bowling_records
where economy <3;

-- ------------------------------------------------------------------------------------------------------------------------
#Q9:-List top 3 players from each team based on runs
select player_id, player_name, country, country_id, runs
FROM (
    select *,
           rank() OVER (partition by country order by  runs desc) as run_rank
    from batting_records) as ranked
where run_rank <= 3
order by country, run_rank;

-- ---------------------------------------------------------------------------------------------------------------------------------
#Q10-List the players with stats of bowling whether or not they have their batting records
select p.player_id,p.player_name,p.country,
p.runs,bw.wickets
from batting_records as p
join bowling_records as bw
on p.player_id = bw.player_id
union all
select
bw.player_id,bw.player_name,bw.country,
null as runs,bw.wickets
from bowling_records as bw
left join batting_records as p
on bw.player_id =p.player_id
where p.player_id is null;

-- ----------------------------------------------------------------------------------------------------------------------------------------------
#Q11:-List the players with stats of runs whether or not have their wickets records
 select p.player_id,p.player_name,p.country,
p.runs,bw.wickets
from batting_records as p
join bowling_records as bw
on p.player_id = bw.player_id
union all
select
p.player_id,p.player_name,p.country,
null as wickets,p.runs
from bowling_records as bw
right join batting_records as p
on bw.player_id =p.player_id
where bw.player_id is null;

-- ----------------------------------------------------------------------------------------------------------------------------------
#Q12:-Classify batsman as per "excellent","good","average" as per their batting average
select player_id,player_name,country,average,
case
when average >=50 then "excellent"
when average >=40 then "good"
else "average"
end as performance_category
from batting_records
order by average desc;

-- ------------------------------------------------------------------------------------------------------------------------------------------
#Q13:-Classify bowlers as per their economy as "economical","average","expensive"
select player_id,player_name,country,economy,
case
when economy <=3 then "Economical"
when economy <=4 then  "Average"
else "Expensive"
end as economy_status
from bowling_records
where overs_bowled >0
order by economy asc;












