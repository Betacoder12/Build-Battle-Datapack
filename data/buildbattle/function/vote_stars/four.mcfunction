execute as @a[tag=builder] if score @s builder_number = #tmp bb_voting_on run scoreboard players add @s bb_points 4

scoreboard players add #tmp players_voted 1

clear @s *

execute if score #tmp bb_voting_on <= #tmp bb_player_count if score #build pntv = #tmp players_voted run function buildbattle:builder_voting
execute if score #tmp bb_voting_on > #tmp bb_player_count if score #build pntv = #tmp players_voted run function buildbattle:ranking