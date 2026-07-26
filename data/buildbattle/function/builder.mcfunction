scoreboard players add #tmp bb_player_count 1
execute store result score @s builder_number run scoreboard players get #tmp bb_player_count
execute if score #tmp bb_player_count matches 2.. run function buildbattle:tp_to_arena