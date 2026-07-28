execute positioned as @e[type=marker,limit=1,name=bb_gold] run kill @e[type=mannequin,distance=..2]
execute positioned as @e[type=marker,limit=1,name=bb_iron] run kill @e[type=mannequin,distance=..2]
execute positioned as @e[type=marker,limit=1,name=bb_bronze] run kill @e[type=mannequin,distance=..2]

execute as @a[tag=builder,scores={rank=0}] positioned as @e[type=marker,limit=1,name=bb_gold] run function buildbattle:wmannequin
execute as @a[tag=builder,scores={rank=1}] positioned as @e[type=marker,limit=1,name=bb_iron] run function buildbattle:wmannequin
execute as @a[tag=builder,scores={rank=2}] positioned as @e[type=marker,limit=1,name=bb_bronze] run function buildbattle:wmannequin

tag @a[tag=builder] remove builder

scoreboard objectives remove bb_voting_on
scoreboard objectives remove players_voted
scoreboard objectives remove vote_count
scoreboard objectives remove bb_points
scoreboard objectives remove rank
scoreboard objectives remove bb_points
scoreboard objectives remove builder_number

scoreboard players set #tmp bb_player_count 0
scoreboard players set #tmp started 0

execute positioned as @e[type=marker,limit=1,name=bb_spawn] run execute positioned ~14 ~-1 ~-90 run place template buildbattle:bb_arenas