tag @s add contractor
scoreboard players set @s contract 0
execute store result score @s UUID run data get entity @s UUID[0]

# Armor Stands
execute rotated ~ 0 run summon armor_stand ^ ^-0.5 ^2 {Tags:["contract","contractpaper"],Invisible:1b,Marker:0b,NoBasePlate:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b,tag:{display:{Name:'["",{"text":"Contract","underlined": true,"color": "yellow"}]',Lore:['["",{"text":"You signed this. Did you even read the terms?"}]']}}}]}
execute rotated ~ 0 run summon armor_stand ^ ^2 ^2 {Tags:["contract","contracthead"],Invisible:1b,Marker:1b,NoBasePlate:1b,CustomName:'[{"text":"Contract","underlined":true,"color":"yellow"}]',CustomNameVisible:1b,Invulnerable:1b,NoGravity:1b}
execute rotated ~ 0 run summon armor_stand ^ ^0.5 ^2 {Tags:["contract","contractbase"],Invisible:1b,Marker:1b,NoBasePlate:1b,CustomName:'[{"text":"Interact to ","underlined":false,"color":"gray"},{"text": "agree to terms...","color": "dark_red"}]',CustomNameVisible:1b,Invulnerable:1b,NoGravity:1b}
execute as @e[type=armor_stand,tag=contract,limit=3,sort=nearest] at @s facing entity @p[tag=contractor] eyes run tp ~ ~ ~

# Effects
execute at @e[type=armor_stand,tag=contractpaper,limit=1,sort=nearest] run particle happy_villager ~ ~2 ~ 0.75 0.75 0.75 0 150 force @a
execute at @e[type=armor_stand,tag=contractpaper,limit=1,sort=nearest] run playsound block.enchantment_table.use player @a ~ ~ ~ 1.5