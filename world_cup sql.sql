create database world_cup
use world_cup
select*from world_cup

## world cup 2024 data analysis ##

##List all players in the dataset.##

select `player name` from world_cup


## Find the total number of matches played by each team.#

SELECT `Team`, COUNT(DISTINCT `Match`) 
AS total_matches FROM 
World_cup group by `team`;

## Retrieve the names and teams of players who scored a century##

select `player name` , `team` from world_cup
where century>0;

SELECT `Player name`, `Team`FROM 
world_cup  where `century` >0;

##Get the highest score of each player##

select `player name`, `highest score` from world_cup ;

##Find the total runs scored by each player##

select `player name` , sum(distinct `runs`)
as total_runs 
from world_cup
group by `player name`;

##List players who have a batting average (Ave) greater than 50.##

select `player name`  from world_cup 
where ave>50;

##Find the players with a strike rate (SR) above 100##

select `player name` from world_cup 
where `sr`>100;

##Retrieve the names of players who have never
##been out (Not out) in any inning.##

SELECT`Player name` FROM World_cup WHERE `Not out` > 0;

##Get the average runs scored by players who have scored at least one fifty##

SELECT AVG(`runs`)AS average_runs FROM World_cup WHERE `fifty` > 0; 

##Find the total number of centuries scored by players from each team##

select `team` , count(`century`) as total_century_by_team from world_cup 
group by `team`;

##Find the player with the highest score in the dataset##

select `player name`, `runs` from world_cup order by `runs` desc 
limit 1;

## Find the player with the highest individual score in the dataset.##

select `player name`,`highest score` from world_cup 
order by `highest score` desc limit 1;

##Retrieve the names of players who have scored
##more runs than their average times the 
##number of innings they've played.##

select `player name` from world_cup where `runs`> `ave`*`inning`;

##Get the top 5 players with the highest strike rates (SR)##

select `player name` , `runs` from world_cup order by `runs` desc 
limit 5 ;

##Find the player with the most number of ducks in the tournament##

select `player name` , `duck` from world_cup order by `duck` desc limit 1

##Calculate the total number of runs##
#scored by each team and rank them from highest to lowest##

SELECT `Team`, SUM(`Runs`) AS total_team_runs
 FROM World_cup GROUP BY `Team` 
 ORDER BY total_team_runs DESC;













