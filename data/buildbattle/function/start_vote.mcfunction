scoreboard players add #tmp start_votes 1
clear @s apple[custom_data={bb_starts:true}] 1

scoreboard objectives add bb_pc_math dummy
scoreboard objectives add two dummy

scoreboard players set #vote two 2
execute store result score #vote bb_pc_math run scoreboard players get #tmp bb_player_count

scoreboard players operation #vote bb_pc_math /= #vote two
scoreboard players add #vote bb_pc_math 1

execute if score #tmp start_votes = #vote bb_pc_math run function buildbattle:start

scoreboard objectives remove bb_pc_math
scoreboard objectives remove two