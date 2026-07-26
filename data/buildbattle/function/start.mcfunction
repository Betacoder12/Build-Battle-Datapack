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

scoreboard players reset #tmp rand_build
schedule function buildbattle:build_vote 1800s append