execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"looping_fumes"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"wool_of_bat"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lily_of_the_valley",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"noxious_timing"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run tag @s add rboenderchaos
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rboenderchaos] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rboenderchaos] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] add rpo
execute as @e[type=armor_stand,tag=cauldron,tag=rboenderchaos] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboenderchaos] at @s run loot spawn ~ ~ ~ loot mb:crafting/cauldron/brew_of_ender_chaos
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboenderchaos] at @s run tag @s remove rboenderchaos