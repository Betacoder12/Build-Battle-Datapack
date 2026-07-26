execute positioned ~ ~-1 ~ run place template buildbattle:bb_lobbies
execute positioned as @e[type=marker,limit=1,name=bb_spawn] run execute positioned ~14 ~-1 ~-90 run place template buildbattle:bb_arenas
scoreboard objectives add bb_player_count dummy
scoreboard objectives add start_votes dummy
scoreboard objectives add started dummy
scoreboard objectives add builder_number dummy
scoreboard players set #tmp bb_player_count 0
scoreboard players set #tmp start_votes 0
scoreboard players set #tmp started 0