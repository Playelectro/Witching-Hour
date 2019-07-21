execute as @e[tag=!rtimer,tag=!rctimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:slime_ball",Count:1b}}] run tag @e[tag=magicaltar,distance=..20,limit=1] add rohorizon
execute as @e[tag=!rtimer,tag=!rctimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:slime_ball",Count:1b}}] run tag @s add ritualoftheventhorizon
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:slime_ball",Count:1b}}] run tag @s add rctimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:slime_ball",Count:1b}}] run playsound minecraft:block.note_block.bell master @a[distance=..20] ~ ~ ~ 50 0.7
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:slime_ball",Count:1b}}] run kill @e[distance=..3,type=item]
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=7200..},tag=ritualoftheventhorizon] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 50 1