execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:poppy",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:dandelion",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:cornflower",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lily_of_the_valley",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rbomistery
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rbomistery] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rbomistery] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rbomistery] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbomistery] at @s run loot spawn ~ ~ ~ loot mb:crafting/cauldron/brew_of_mystery
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbomistery] at @s run tag @s remove rbomistery