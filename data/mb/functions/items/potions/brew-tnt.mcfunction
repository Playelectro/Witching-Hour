execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"eternal_hunger"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"noxious_timing"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"oli_of_thorns"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:tnt",Count:3b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"bottled_pain"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run tag @s add rboctnt
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rboctnt] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rboctnt] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] add rpo
execute as @e[type=armor_stand,tag=cauldron,tag=rboctnt] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboctnt] at @s run loot spawn ~ ~ ~ loot mb:crafting/cauldron/brew_of_volitatility
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboctnt] at @s run tag @s remove rboctnt