execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"oli_of_thorns"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:ink_sac",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:charcoal",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=100..},limit=1] if block ~ ~-1 ~ fire run tag @s add rbblindness
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rbblindness] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rbblindness] at @s run scoreboard players set @e[tag=magicaltar,distance=..20,scores={Power=100..},limit=1] mb_PowerCost 100
execute as @e[type=armor_stand,tag=cauldron,tag=rbblindness] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbblindness] at @s run loot spawn ~ ~ ~ loot mb:crafting/cauldron/brew_of_darkness
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbblindness] at @s run tag @s remove rbblindness