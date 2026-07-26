execute if score #tmp bb_voting_on matches 1 run scoreboard players add @a[tag=builder_1] vote_count 4
execute if score #tmp bb_voting_on matches 2 run scoreboard players add @a[tag=builder_2] vote_count 4
execute if score #tmp bb_voting_on matches 3 run scoreboard players add @a[tag=builder_3] vote_count 4
execute if score #tmp bb_voting_on matches 4 run scoreboard players add @a[tag=builder_4] vote_count 4
execute if score #tmp bb_voting_on matches 5 run scoreboard players add @a[tag=builder_5] vote_count 4
execute if score #tmp bb_voting_on matches 6 run scoreboard players add @a[tag=builder_6] vote_count 4
execute if score #tmp bb_voting_on matches 7 run scoreboard players add @a[tag=builder_7] vote_count 4
execute if score #tmp bb_voting_on matches 8 run scoreboard players add @a[tag=builder_8] vote_count 4
execute if score #tmp bb_voting_on matches 9 run scoreboard players add @a[tag=builder_9] vote_count 4
execute if score #tmp bb_voting_on matches 10 run scoreboard players add @a[tag=builder_10] vote_count 4
execute if score #tmp bb_voting_on matches 11 run scoreboard players add @a[tag=builder_11] vote_count 4
execute if score #tmp bb_voting_on matches 12 run scoreboard players add @a[tag=builder_12] vote_count 4
execute if score #tmp bb_voting_on matches 13 run scoreboard players add @a[tag=builder_13] vote_count 4
execute if score #tmp bb_voting_on matches 14 run scoreboard players add @a[tag=builder_14] vote_count 4
execute if score #tmp bb_voting_on matches 15 run scoreboard players add @a[tag=builder_15] vote_count 4
execute if score #tmp bb_voting_on matches 16 run scoreboard players add @a[tag=builder_16] vote_count 4

scoreboard players add #tmp players_voted 1

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

clear @s *