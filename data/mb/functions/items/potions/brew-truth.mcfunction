execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{lppotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{woolofbat:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:snowball",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run tag @s add rbtruth
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rbtruth] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rbtruth] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] add rpo
execute as @e[type=armor_stand,tag=cauldron,tag=rbtruth] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbtruth] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:splash_potion",Count:3b,tag:{brewofrevealing:1b,display:{Name:"{\"text\":\"Brew of Truth\",\"color\":\"dark_green\"}"},HideFlags:63,CustomPotionColor:16777215}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbtruth] at @s run tag @s remove rbtruth