execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{demonhearth:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rdblood
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rdblood] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rdblood] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rdblood] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rdblood] at @s run loot spawn ~ ~ ~ loot mb:items/evil_blood
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rdblood] at @s run loot spawn ~ ~ ~ loot mb:items/horror_dust
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rdblood] at @s run tag @s remove rdblood