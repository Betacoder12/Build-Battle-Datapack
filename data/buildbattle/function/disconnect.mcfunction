tag @s[tag=builder] add left
execute as @a[tag=builder] if score @s builder_number > @a[tag=left,limit=1] builder_number run scoreboard players remove @s builder_number 1
scoreboard players remove #tmp bb_player_count 1