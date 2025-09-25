execute at @e[type=armor_stand,tag=contractpaper,limit=1,sort=nearest] run tag @p[tag=!contracted,tag=!contractor,nbt={SelectedItem:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'["",{"text":"Contract","underlined": true,"color": "yellow"}]',Lore:['["",{"text":"You signed this. Did you even read the terms?"}]']}}}}] add contractednew
execute at @e[type=armor_stand,tag=contractpaper,limit=1,sort=nearest] run scoreboard players operation @p[tag=contractednew] contractorUUID = @p[tag=contractor] UUID

# Effects
execute at @e[type=armor_stand,tag=contractpaper,limit=1,sort=nearest] run playsound minecraft:entity.villager.celebrate player @a[distance=..24] ~ ~ ~ 1.5
execute at @e[type=armor_stand,tag=contractpaper,limit=1,sort=nearest] run tellraw @p[tag=contractednew] ["",{"text":"You have been contracted to ","color":"yellow"},{"selector":"@p[tag=contractor]","color":"gold"}]
execute at @e[type=armor_stand,tag=contractpaper,limit=1,sort=nearest] run tellraw @p[tag=contractor] ["",{"text":"You have successfully contracted ","color":"yellow"},{"selector":"@p[tag=contractednew]","color":"gold"}]

# End
execute at @e[type=armor_stand,tag=contractpaper,limit=1,sort=nearest] as @p[tag=contractor] run scoreboard players set @s contract 1
execute at @e[type=armor_stand,tag=contractpaper,limit=1,sort=nearest] as @p[tag=contractor] run resource set @s engineers:contracting_timer 5
kill @e[type=armor_stand,tag=contract,limit=3,sort=nearest]