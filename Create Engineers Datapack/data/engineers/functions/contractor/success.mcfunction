# Effects
execute unless score @s contracttimer matches 1 as @p[tag=contractednew] run effect give @s glowing 1 0 true
execute unless score @s contracttimer matches 1 as @p[tag=contractednew] run effect give @s slowness 1 255 true
execute unless score @s contracttimer matches 1 as @p[tag=contractednew] run effect give @s jump_boost 1 128 true
execute unless score @s contracttimer matches 1 if entity @p[tag=contractednew] as @p[tag=contractednew] at @s unless entity @e[type=marker,tag=contractednew,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["contractednew","contract"]}
execute as @e[type=marker,tag=contractednew,limit=1,sort=nearest] at @s run particle flame ^ ^ ^1.2 0 1 0 0.1 0 normal @a
execute as @e[type=marker,tag=contractednew,limit=1,sort=nearest] at @s run particle soul_fire_flame ^ ^ ^1.2 0 0 0 0.01 5 normal @a
execute at @p[tag=contractednew] run tp @e[type=marker,tag=contractednew,limit=1,sort=nearest] ~ ~ ~
execute as @e[type=marker,tag=contractednew,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~10 0

execute unless score @s contracttimer matches 1 as @p[tag=contractor] at @s run effect give @s glowing 1 0 true
execute unless score @s contracttimer matches 1 as @p[tag=contractor] at @s run effect give @s slowness 1 255 true
execute unless score @s contracttimer matches 1 as @p[tag=contractor] at @s run effect give @s jump_boost 1 128 true
execute unless score @s contracttimer matches 1 if entity @p[tag=contractor] as @p[tag=contractor] at @s unless entity @e[type=marker,tag=contractor,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["contractor","contract"]}
execute as @e[type=marker,tag=contractor,limit=1,sort=nearest] at @s run particle soul_fire_flame ^ ^ ^1.2 0 1 0 0.1 0 normal @a
execute as @e[type=marker,tag=contractor,limit=1,sort=nearest] at @s run particle flame ^ ^ ^1.2 0 0 0 0.01 5 normal @a
execute at @p[tag=contractor] run tp @e[type=marker,tag=contractor,limit=1,sort=nearest] ~ ~ ~
execute as @e[type=marker,tag=contractor,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-10 0

# End
execute if score @s contracttimer matches 1 at @p[tag=contractor] run kill @e[type=marker,tag=contract,limit=2,sort=nearest]
execute if score @s contracttimer matches 1 as @p[tag=contractednew] run tag @s add contracted
execute if score @s contracttimer matches 1 as @p[tag=contractednew] run tag @s remove contractednew