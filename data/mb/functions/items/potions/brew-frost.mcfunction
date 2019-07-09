execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"breath_of_the_moss_guardian"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:packed_ice",Count:4b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"skys_tear"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run tag @s add rbofrost
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rbofrost] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rbofrost] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] add rpo
execute as @e[type=armor_stand,tag=cauldron,tag=rbofrost] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbofrost] at @s run loot spawn ~ ~ ~ loot mb:items/cauldron/brew_of_frost
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbofrost] at @s run tag @s remove rbofrost