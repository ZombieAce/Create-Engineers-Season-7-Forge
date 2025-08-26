# Scoreboard
execute unless score @s level matches 10.. run scoreboard players add @s skillpoints 1
execute unless score @s level matches 10.. run scoreboard players add @s level 1

# Title
title @s subtitle ["",{"text":"Level "},{"score":{"name":"@s","objective":"level"},"color":"gold"}]
title @s actionbar ["",{"text":"Available Skill Points: "},{"score":{"name":"@s","objective":"skillpoints"},"color":"gold"}]

execute unless score @s level matches 10.. run title @s title {"text":"You leveled up!","color":"yellow"}
execute if score @s level matches 10.. run title @s title {"text":"You reached max level!","color": "gold"}

execute if score @s level matches 10.. run power remove @s engineers:leveling_xpbar