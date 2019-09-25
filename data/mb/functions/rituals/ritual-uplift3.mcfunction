execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=600..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"looping_fumes"}}}] run scoreboard players set @e[tag=magicaltar,distance=..20,limit=1,scores={Power=600..}] mb_PowerCost 600
execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=600..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"looping_fumes"}}}] run tag @s add ritualofuplisting2
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=600..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"looping_fumes"}}}] run tag @s add rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=600..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"looping_fumes"}}}] run playsound minecraft:block.note_block.bell master @a[distance=..20] ~ ~ ~ 50 0.7
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=600..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"looping_fumes"}}}] run kill @e[distance=..3,type=item]
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofuplisting2] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 50 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofuplisting2] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 200
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofuplisting2] at @s run summon armor_stand ~ ~9.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["moveup20large","moveup20medium1","roue"],DisabledSlots:4144959}
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofuplisting2] at @s run setblock ~ ~-5 ~ bedrock
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofuplisting2] at @s run tag @s remove rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofuplisting2] run tag @s remove ritualofuplisting2