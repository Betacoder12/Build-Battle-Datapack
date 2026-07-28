execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=1}] ~26 ~ ~
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=2}] ~26 ~ ~-26
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=3}] ~26 ~ ~-52
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=4}] ~26 ~ ~-78
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=5}] ~52 ~ ~
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=6}] ~52 ~ ~-26
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=7}] ~52 ~ ~-52
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=8}] ~52 ~ ~-78
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=9}] ~78 ~ ~
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=10}] ~78 ~ ~-26
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=11}] ~78 ~ ~-52
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=12}] ~78 ~ ~-78
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=13}] ~104 ~ ~
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=14}] ~104 ~ ~-26
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=15}] ~104 ~ ~-52
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run tp @a[scores={builder_number=16}] ~104 ~ ~-78


scoreboard players set #tmp started 1

gamemode creative @a[tag=builder]

scoreboard players set #tmp start_votes 0
scoreboard objectives add rand_build dummy
execute store result score #tmp rand_build run random value 0..16

execute if score #tmp rand_build matches 0 run title @a[tag=builder] title "Block"
execute if score #tmp rand_build matches 1 run title @a[tag=builder] title "Mob"
execute if score #tmp rand_build matches 2 run title @a[tag=builder] title "Entity"
execute if score #tmp rand_build matches 3 run title @a[tag=builder] title "Forest"
execute if score #tmp rand_build matches 4 run title @a[tag=builder] title "Beach"
execute if score #tmp rand_build matches 5 run title @a[tag=builder] title "Desert"
execute if score #tmp rand_build matches 6 run title @a[tag=builder] title "Desert Oasis"
execute if score #tmp rand_build matches 7 run title @a[tag=builder] title "Ocean"
execute if score #tmp rand_build matches 8 run title @a[tag=builder] title "Base"
execute if score #tmp rand_build matches 9 run title @a[tag=builder] title "Secret Base"
execute if score #tmp rand_build matches 10 run title @a[tag=builder] title "House"
execute if score #tmp rand_build matches 11 run title @a[tag=builder] title "Plant"
execute if score #tmp rand_build matches 12 run title @a[tag=builder] title "Space"
execute if score #tmp rand_build matches 13 run title @a[tag=builder] title "Planet"
execute if score #tmp rand_build matches 14 run title @a[tag=builder] title "Dinosaur"
execute if score #tmp rand_build matches 15 run title @a[tag=builder] title "Your Favorite Character"
execute if score #tmp rand_build matches 16 run title @a[tag=builder] title "Absolutely Anything!"

scoreboard objectives remove rand_build

title @a[tag=builder] subtitle "You have 30mins"
playsound block.note_block.bell player @a[tag=builder]

schedule function buildbattle:timers/15mins 900s
schedule function buildbattle:timers/5mins 1500s
schedule function buildbattle:timers/1min 1740s
schedule function buildbattle:build_vote 1800s