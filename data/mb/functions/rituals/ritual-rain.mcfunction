execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=100..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run scoreboard players set @e[tag=magicaltar,distance=..20,limit=1,scores={Power=100..}] mb_PowerCost 100
execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=100..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] as @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run function mb:utils/find_thrower
execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=100..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] as @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] at @a if score @s throwerid = @p throwerid run tag @p add rr
execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=100..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run tag @s add ritualofrain
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=100..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run tag @s add rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=100..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run playsound minecraft:block.note_block.bell master @a[distance=..20] ~ ~ ~ 50 0.7
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=100..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run kill @e[distance=..3,type=item]
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofrain] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 50 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofrain] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 200
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofrain] at @s run weather rain
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofrain] at @s run tag @s remove rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofrain] run tag @s remove ritualofrain