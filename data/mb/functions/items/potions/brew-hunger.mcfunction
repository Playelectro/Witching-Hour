execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"eternal_hunger"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:rotten_flesh",Count:3b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run tag @s add rbohunger
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rbohunger] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rbohunger] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] add rpo
execute as @e[type=armor_stand,tag=cauldron,tag=rbohunger] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbohunger] at @s run loot spawn ~ ~ ~ loot mb:items/cauldron/brew_of_hunger
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbohunger] at @s run tag @s remove rbohunger