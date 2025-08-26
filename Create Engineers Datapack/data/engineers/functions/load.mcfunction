# Role Assignment
team add human "Human"
team modify human color dark_aqua
team modify human prefix "[HUMAN] "
team modify human seeFriendlyInvisibles false

team add cheeseman "Cheeseman"
team modify cheeseman color gold
team modify cheeseman prefix "[CHEESEMAN] "
team modify cheeseman seeFriendlyInvisibles false

team add vulpen "Vulpen"
team modify cheeseman color red
team modify cheeseman prefix "[VULPEN] "
team modify cheeseman seeFriendlyInvisibles false

# Classes
scoreboard objectives add level dummy
scoreboard objectives add skillpoints dummy
scoreboard objectives add skillmenu trigger
scoreboard objectives add bool dummy

## Global
scoreboard objectives add vitality dummy "Vitality"
scoreboard objectives add agility dummy "Agility"
scoreboard objectives add regen dummy "Regeneration"
## Warrior
scoreboard objectives add sharperweapons dummy "Sharper Weapons"
scoreboard objectives add aerialcombat dummy "Aerial Combat"
## Archer
scoreboard objectives add dexterity dummy "Stronger Bows"
## Miner
scoreboard objectives add digging dummy "Digging"
scoreboard objectives add ironfists dummy "Iron Fists"
## Lumberjack
scoreboard objectives add chopping dummy "Chopping"
scoreboard objectives add planker dummy "Planker"
## Farmer
scoreboard objectives add fertilizer dummy "Fertilizer"
scoreboard objectives add planter dummy "Planter"

# Playtime
scoreboard objectives add playtime trigger
scoreboard objectives add ticks dummy
scoreboard objectives add days dummy
scoreboard objectives add hours dummy
scoreboard objectives add minutes dummy
scoreboard objectives add seconds dummy
scoreboard objectives add daysMonth dummy
scoreboard objectives add hoursMonth dummy
scoreboard objectives add minutesMonth dummy
scoreboard objectives add secondsMonth dummy