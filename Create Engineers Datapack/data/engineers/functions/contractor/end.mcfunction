# Contract Fail Effects
execute at @e[type=armor_stand,tag=contracthead,limit=1,sort=nearest] if score @s contract matches 0 run particle smoke ~ ~-0.5 ~ 0.5 0.5 0.5 0 200 force @a
execute at @e[type=armor_stand,tag=contracthead,limit=1,sort=nearest] if score @s contract matches 0 run playsound block.candle.extinguish player @a[distance=..24] ~ ~ ~ 1.5

# End
kill @e[type=armor_stand,tag=contract,limit=3,sort=nearest]
scoreboard players reset @s contract
tag @s remove contractor