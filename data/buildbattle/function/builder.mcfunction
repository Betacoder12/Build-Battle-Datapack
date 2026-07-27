scoreboard players add #tmp bb_player_count 1
execute store result score @s builder_number run scoreboard players get #tmp bb_player_count
tag @s add builder
give @s apple[consumable={consume_seconds:0},item_name="Start?",custom_data={bb_starts:true}]