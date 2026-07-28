scoreboard players set #tmp players_voted 0
scoreboard players add #tmp bb_voting_on 1

execute as @a[tag=builder] unless score @s builder_number = #tmp bb_voting_on run give @s apple[item_name={text:"One Star",color:gold},custom_data={stars:1}]
execute as @a[tag=builder] unless score @s builder_number = #tmp bb_voting_on run give @s apple[item_name={text:"Two Stars",color:gold},custom_data={stars:2}]
execute as @a[tag=builder] unless score @s builder_number = #tmp bb_voting_on run give @s apple[item_name={text:"Three Stars",color:gold},custom_data={stars:3}]
execute as @a[tag=builder] unless score @s builder_number = #tmp bb_voting_on run give @s apple[item_name={text:"Four Stars",color:gold},custom_data={stars:4}]
execute as @a[tag=builder] unless score @s builder_number = #tmp bb_voting_on run give @s apple[item_name={text:"Five Star",color:gold},custom_data={stars:5}]