execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_nugget",Count:4b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run scoreboard players set @e[tag=magicaltar,distance=..20,limit=1,scores={Power=300..}] mb_PowerCost 300
execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_nugget",Count:4b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run tag @s add ritualoffate
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_nugget",Count:4b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run tag @s add rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_nugget",Count:4b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run playsound minecraft:block.note_block.bell master @a[distance=..20] ~ ~ ~ 50 0.7
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_nugget",Count:4b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run kill @e[distance=..3,type=item]
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualoffate] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 50 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualoffate] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 200
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualoffate] at @s run loot spawn ~ ~1 ~ loot mb:items/fates_coin
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualoffate] at @s run tag @s remove rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualoffate] run tag @s remove ritualoffate