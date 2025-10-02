tag @s add contractsummoner
execute as @a if score @s contractorUUID = @p[tag=contractsummoner] UUID run tp @s @p[tag=contractsummoner]
particle smoke ~ ~1 ~ .5 0.8 .5 0.03 650 force @a
playsound item.totem.use player @a[distance=..24] ~ ~ ~ 1.5
tag @s remove contractsummoner
