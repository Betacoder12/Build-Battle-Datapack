schedule clear buildbattle:scoring
tag @s add checking

execute as @a[tag=builder] if score @s bb_points < @a[tag=checking,limit=1] bb_points run scoreboard players add @s rank 1

tag @s remove checking
scoreboard players add #tmp checking_on 1

execute as @a[tag=builder] if score #tmp checking_on = @s builder_number run schedule function buildbattle:scoring 1t
execute if score #tmp bb_player_count < #tmp checking_on run function buildbattle:ranking2