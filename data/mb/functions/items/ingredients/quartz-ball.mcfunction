execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:quartz_block",Count:6b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rqurtzsphere
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rqurtzsphere] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rqurtzsphere] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rqurtzsphere] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rqurtzsphere] at @s run loot spawn ~ ~ ~ loot mb:items/quartz_ball
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rqurtzsphere] at @s run tag @s remove rqurtzsphere