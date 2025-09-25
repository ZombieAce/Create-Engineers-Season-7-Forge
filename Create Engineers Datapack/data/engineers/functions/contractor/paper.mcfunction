execute as @a[scores={trades=25..},limit=1,sort=nearest] run scoreboard players add @s timer 1
particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0.01 20 force @a
execute if score @s timer matches 80 run origin set @s origins-classes:class engineers:class/contractor
execute if score @s timer matches 80 run setblock ~ ~-0.1 ~ air replace
execute if score @s timer matches 80 run particle explosion ~ ~ ~ 0.5 0.5 0.5 0 1 force @a
execute if score @s timer matches 80 run kill @e[type=item,limit=1,sort=nearest,nbt={Item: {id: "minecraft:paper", Count:1b}}]
execute if score @s timer matches 80 run scoreboard players reset @s trades
execute if score @s timer matches 80 run scoreboard players reset @s contractorswitch
execute if score @s timer matches 80 run scoreboard players reset @s timer