title @a[tag=builder] title "Time's Up!"
title @a[tag=builder] subtitle "Start Voting!"

playsound block.note_block.bell player @a[tag=builder]

schedule clear buildbattle:build_vote
scoreboard objectives add bb_voting_on dummy
scoreboard objectives add bb_points dummy
scoreboard objectives add vote_count dummy
scoreboard objectives add players_voted dummy

scoreboard players set #tmp players_voted 0
scoreboard players set #tmp bb_voting_on 0
scoreboard players set @a[tag=builder] vote_count 0

scoreboard objectives add pntv dummy
execute store result score #build pntv run scoreboard players get #tmp bb_voting_on
scoreboard players remove #build pntv 1

clear @a[tag=builder] *

execute as @a[tag=builder] run function buildbattle:markplayers

function buildbattle:builder_voting
