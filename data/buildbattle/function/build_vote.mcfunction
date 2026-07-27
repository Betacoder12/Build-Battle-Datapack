schedule clear buildbattle:build_vote
scoreboard objectives add bb_voting_on dummy
scoreboard objectives add bb_points dummy
scoreboard objectives add vote_count dummy
scoreboard objectives add players_voted dummy

scoreboard players set #tmp players_voted 0
scoreboard players set #tmp bb_voting_on 0
scoreboard players set @a[tag=builder] vote_count 0

scoreboard objectives add pntv dummy
scoreboard objectives add one dummy
scoreboard players set #build one 1
execute store result score #build pntv run scoreboard players get #tmp bb_voting_on
scoreboard players operation #build pntv -= #build one
scoreboard objectives remove one

clear @a[tag=builder] *

function buildbattle:builder_voting