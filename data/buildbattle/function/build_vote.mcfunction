schedule clear buildbattle:build_vote
scoreboard objectives add bb_voting_on dummy
scoreboard objectives add bb_points dummy
scoreboard objectives add vote_count dummy
scoreboard objectives add players_voted dummy

scoreboard players set #tmp players_voted 0
scoreboard players set #tmp bb_voting_on 1
scoreboard players set @a[tag=builder] vote_count 0

clear @a[tag=builder] *

execute if score #tmp bb_player_count matches 2 run function buildbattle:builder_voting/two
execute if score #tmp bb_player_count matches 3 run function buildbattle:builder_voting/three
execute if score #tmp bb_player_count matches 4 run function buildbattle:builder_voting/four
execute if score #tmp bb_player_count matches 5 run function buildbattle:builder_voting/five
execute if score #tmp bb_player_count matches 6 run function buildbattle:builder_voting/six
execute if score #tmp bb_player_count matches 7 run function buildbattle:builder_voting/seven
execute if score #tmp bb_player_count matches 8 run function buildbattle:builder_voting/eight
execute if score #tmp bb_player_count matches 9 run function buildbattle:builder_voting/nine
execute if score #tmp bb_player_count matches 10 run function buildbattle:builder_voting/ten
execute if score #tmp bb_player_count matches 11 run function buildbattle:builder_voting/eleven
execute if score #tmp bb_player_count matches 12 run function buildbattle:builder_voting/twelve
execute if score #tmp bb_player_count matches 13 run function buildbattle:builder_voting/thirteen
execute if score #tmp bb_player_count matches 14 run function buildbattle:builder_voting/fourteen
execute if score #tmp bb_player_count matches 15 run function buildbattle:builder_voting/fifteen
execute if score #tmp bb_player_count matches 16 run function buildbattle:builder_voting/sixteen