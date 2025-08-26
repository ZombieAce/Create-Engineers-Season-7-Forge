# Level up Skill
execute store success score @s bool if score @s skillpoints matches 1.. if score @s sharperweapons matches ..2 run scoreboard players add @s sharperweapons 1
execute if score @s skillpoints matches 1.. if score @s bool matches 1 run scoreboard players remove @s skillpoints 1

# Display Success Text
execute if score @s bool matches 1 if score @s sharperweapons matches ..2 run title @s actionbar ["",{"text":"Sharper Weapons ","color":"yellow"},{"score":{"name":"@s","objective":"sharperweapons"},"color":"green"},{"text":" / "},{"text":"3","color":"green"}]
execute if score @s sharperweapons matches 3 run title @s actionbar ["",{"text":"Sharper Weapons ","color":"yellow"},{"text": "is already maxed","color": "red"}]
execute if score @s bool matches 0 run title @s actionbar ["",{"text": "Not enough Skill Points!","color": "red"}]
