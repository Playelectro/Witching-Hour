execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:slime_ball",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{lfpotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire if entity @e[type=item,distance=..1,nbt={Item:{tag:{fupotion:1b}}}] run tag @s add rsep
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rlp
execute as @e[type=armor_stand,tag=cauldron,tag=] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rsep] at @s run summon slime ~ ~1 ~ {Silent:1b,DeathLootTable:"56789",AbsorptionAmount:14f,Size:1,Tags:["inv","evilpumpkin"],Attributes:[{Name:generic.attackDamage,Base:5}]}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rsep] at @s run tag @s remove rsep