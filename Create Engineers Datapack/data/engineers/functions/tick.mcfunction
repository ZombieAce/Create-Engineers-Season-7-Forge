# Playtime
execute as @a unless score @s playtime matches 1.. run scoreboard players enable @s playtime
execute as @a if score @s playtime matches 1.. run tellraw @s ["",{"text":"==============================\nPlaytime for "},{"selector":"@s","color":"green"},{"text":"\n\nThis Month: "},{"score":{"name":"@s","objective":"days"},"color":"gold"},{"text":"d","color":"white"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"hours"},"color":"gold"},{"text":"h","color":"white"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"minutes"},"color":"gold"},{"text":"m","color":"white"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"seconds"},"color":"gold"},{"text":"s","color":"white"},{"text":"\nTotal Playtime: "},{"score":{"name":"@s","objective":"days"},"color":"gold"},{"text":"d","color":"white"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"hours"},"color":"gold"},{"text":"h","color":"white"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"minutes"},"color":"gold"},{"text":"m","color":"white"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"seconds"},"color":"gold"},{"text":"s","color":"white"},{"text":"\n=============================="}]
execute as @a if score @s playtime matches 1.. run scoreboard players set @s playtime 0

execute as @a run scoreboard players add @s ticks 1
execute as @a if score @s ticks matches 20 run function engineers:playtime

# Other
execute as @a if score @s ticks matches 20 run function engineers:roles

# End
execute as @a if score @s ticks matches 20 run scoreboard players set @s ticks 0