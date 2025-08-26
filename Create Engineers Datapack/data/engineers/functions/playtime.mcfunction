# Total
execute as @a run scoreboard players add @s seconds 1

execute as @a if score @s seconds matches 60.. run scoreboard players add @s minutes 1
execute as @a if score @s seconds matches 60.. run scoreboard players set @s seconds 0

execute as @a if score @s minutes matches 60.. run scoreboard players add @s hours 1
execute as @a if score @s minutes matches 60.. run scoreboard players set @s minutes 0

execute as @a if score @s hours matches 24.. run scoreboard players add @s days 1
execute as @a if score @s hours matches 24.. run scoreboard players set @s hours 0

# Month
execute as @a run scoreboard players add @s secondsMonth 1

execute as @a if score @s secondsMonth matches 60.. run scoreboard players add @s minutesMonth 1
execute as @a if score @s secondsMonth matches 60.. run scoreboard players set @s secondsMonth 0

execute as @a if score @s minutesMonth matches 60.. run scoreboard players add @s hoursMonth 1
execute as @a if score @s minutesMonth matches 60.. run scoreboard players set @s minutesMonth 0

execute as @a if score @s hoursMonth matches 24.. run scoreboard players add @s daysMonth 1
execute as @a if score @s hoursMonth matches 24.. run scoreboard players set @s hoursMonth 0

# End
execute as @a unless score @s seconds matches 0.. run scoreboard players set @s seconds 0
execute as @a unless score @s minutes matches 0.. run scoreboard players set @s minutes 0
execute as @a unless score @s hours matches 0.. run scoreboard players set @s hours 0
execute as @a unless score @s days matches 0.. run scoreboard players set @s days 0

execute as @a unless score @s secondsMonth matches 0.. run scoreboard players set @s secondsMonth 0
execute as @a unless score @s minutesMonth matches 0.. run scoreboard players set @s minutesMonth 0
execute as @a unless score @s hoursMonth matches 0.. run scoreboard players set @s hoursMonth 0
execute as @a unless score @s daysMonth matches 0.. run scoreboard players set @s daysMonth 0