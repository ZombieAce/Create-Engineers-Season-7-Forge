execute as @e[type=armor_stand,tag=contractpaper,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~2 ~
execute unless score @s contract matches 1 unless data entity @e[type=armor_stand,tag=contractpaper,limit=1,sort=nearest] {ArmorItems:[{}, {}, {}, {id:"minecraft:paper",Count:1b}]} run function engineers:contractor/accept
execute if score @s contract matches 1 run function engineers:contractor/success