gamemode adventure @a[tag=builder]

scoreboard objectives add rank dummy
scoreboard objectives add checking_on dummy
scoreboard players set #tmp checking_on 1
execute positioned as @e[limit=1,type=marker,name=bb_spawn] run tp @a[tag=builder] ~ ~ ~-26 -90 0

execute as @a[tag=builder,scores={builder_number=1}] run function buildbattle:scoring
