execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"looping_fumes"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"brew_of_tangeled_webs"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run tag @s add rboentrapment
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rboentrapment] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rboentrapment] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] add rpo
execute as @e[type=armor_stand,tag=cauldron,tag=rboentrapment] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboentrapment] at @s run loot spawn ~ ~ ~ loot mb:crafting/cauldron/brew_of_entrapment
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboentrapment] at @s run tag @s remove rboentrapment