execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"fleshy_unguent"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:stone",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"roots"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run tag @s add rbostoneskin
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rbostoneskin] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rbostoneskin] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] add rpo
execute as @e[type=armor_stand,tag=cauldron,tag=rbostoneskin] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbostoneskin] at @s run loot spawn ~ ~ ~ loot mb:items/cauldron/brew_of_stone_skin
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbostoneskin] at @s run tag @s remove rbostoneskin