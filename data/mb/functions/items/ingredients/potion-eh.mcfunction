execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{hapotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{efpotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rehp
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rehp] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rehp] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rehp] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rehp] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:12,ehpotion:1b,display:{Name:"{\"text\":\"Eternal Hunger\",\"color\":\"green\"}"}}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rehp] at @s run tag @s remove rehp