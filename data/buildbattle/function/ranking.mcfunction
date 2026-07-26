gamemode adventure @a[tag=builder]

scoreboard objectives add rank dummy
execute positioned as @e[limit=1,type=marker,name=bb_spawn] run tp @a[tag=builder] ~ ~ ~-26 -90 0

execute as @a[tag=builder,tag=!builder_1] if score @a[tag=builder_1,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute as @a[tag=builder,tag=!builder_2] if score @a[tag=builder_2,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 3.. as @a[tag=builder,tag=!builder_3] if score @a[tag=builder_3,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 4.. as @a[tag=builder,tag=!builder_4] if score @a[tag=builder_4,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 5.. as @a[tag=builder,tag=!builder_5] if score @a[tag=builder_5,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 6.. as @a[tag=builder,tag=!builder_6] if score @a[tag=builder_6,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 7.. as @a[tag=builder,tag=!builder_7] if score @a[tag=builder_7,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 8.. as @a[tag=builder,tag=!builder_8] if score @a[tag=builder_8,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 9.. as @a[tag=builder,tag=!builder_9] if score @a[tag=builder_9,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 10.. as @a[tag=builder,tag=!builder_10] if score @a[tag=builder_10,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 11.. as @a[tag=builder,tag=!builder_11] if score @a[tag=builder_11,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 12.. as @a[tag=builder,tag=!builder_12] if score @a[tag=builder_12,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 13.. as @a[tag=builder,tag=!builder_13] if score @a[tag=builder_13,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 14.. as @a[tag=builder,tag=!builder_14] if score @a[tag=builder_14,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 15.. as @a[tag=builder,tag=!builder_15] if score @a[tag=builder_15,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1
execute if score #tmp bb_player_count matches 16.. as @a[tag=builder,tag=!builder_16] if score @a[tag=builder_16,limit=1] bb_points > @s bb_points run scoreboard players add @s rank 1

execute positioned as @e[type=marker,limit=1,name=bb_gold] run kill @e[type=mannequin,distance=..2]
execute positioned as @e[type=marker,limit=1,name=bb_iron] run kill @e[type=mannequin,distance=..2]
execute positioned as @e[type=marker,limit=1,name=bb_bronze] run kill @e[type=mannequin,distance=..2]

execute as @a[tag=builder,scores={rank=0}] positioned as @e[type=marker,limit=1,name=bb_gold] run function buildbattle:wmannequin
execute as @a[tag=builder,scores={rank=1}] positioned as @e[type=marker,limit=1,name=bb_iron] run function buildbattle:wmannequin
execute as @a[tag=builder,scores={rank=2}] positioned as @e[type=marker,limit=1,name=bb_bronze] run function buildbattle:wmannequin

tag @a[tag=builder_1] add builder_1
tag @a[tag=builder_2] add builder_2
tag @a[tag=builder_3] add builder_3
tag @a[tag=builder_4] add builder_4
tag @a[tag=builder_5] add builder_5
tag @a[tag=builder_6] add builder_6
tag @a[tag=builder_7] add builder_7
tag @a[tag=builder_8] add builder_8
tag @a[tag=builder_9] add builder_9
tag @a[tag=builder_10] add builder_10
tag @a[tag=builder_11] add builder_11
tag @a[tag=builder_12] add builder_12
tag @a[tag=builder_13] add builder_13
tag @a[tag=builder_14] add builder_14
tag @a[tag=builder_15] add builder_15
tag @a[tag=builder_16] add builder_16
tag @a[tag=builder] remove builder

scoreboard objectives remove bb_voting_on
scoreboard objectives remove players_voted
scoreboard objectives remove vote_count
scoreboard objectives remove bb_points
scoreboard objectives remove rank
scoreboard objectives remove rand_build

scoreboard players set #tmp start_votes 0
scoreboard players set #tmp bb_player_count 0
scoreboard players set #tmp started 0

execute positioned as @e[type=marker,limit=1,name=bb_spawn] run execute positioned ~14 ~-1 ~-90 run place template buildbattle:bb_arenas