execute as @e[tag=!rtimer,tag=!rctimer,tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=400..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"wool_of_bat"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"skys_tear"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"condensed_fear"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:anvil",Count:1b}}] run scoreboard players set @e[tag=magicaltar,distance=..20,limit=1,scores={Power=400..}] mb_PowerCost 400
execute as @e[tag=!rtimer,tag=!rctimer,tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=400..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"wool_of_bat"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"skys_tear"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"condensed_fear"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:anvil",Count:1b}}] run tag @s add ritualofheavycattle
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=400..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"wool_of_bat"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"skys_tear"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"condensed_fear"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:anvil",Count:1b}}] run tag @s add rctimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=400..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"wool_of_bat"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"skys_tear"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"condensed_fear"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:anvil",Count:1b}}] run playsound minecraft:block.note_block.bell master @a[distance=..20] ~ ~ ~ 50 0.7
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=400..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"wool_of_bat"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"skys_tear"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"condensed_fear"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:anvil",Count:1b}}] run kill @e[distance=..3,type=item]
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={RRTimer=7200..},tag=ritualofheavycattle] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 50 1