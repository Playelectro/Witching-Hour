execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"looping_fumes"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"living_flame"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rpc
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rpc] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rpc] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rpc] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rpc] at @s run loot spawn ~ ~ ~ loot mb:items/catalist
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rpc] at @s run tag @s remove rpc