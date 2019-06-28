execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"greater_catalist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"spectral_dust"}}}] if score traker Time matches 13000..23000 run tag @e[tag=magicaltar,distance=..20,limit=1] add rorain
execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"greater_catalist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"spectral_dust"}}}] if score traker Time matches 13000..23000 run tag @s add ritualofnecros
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"greater_catalist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"spectral_dust"}}}] if score traker Time matches 13000..23000 run tag @s add rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"greater_catalist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"spectral_dust"}}}] if score traker Time matches 13000..23000 run playsound minecraft:block.note_block.bell master @a[distance=..20] ~ ~ ~ 50 0.7
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"greater_catalist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"spectral_dust"}}}] if score traker Time matches 13000..23000 run kill @e[distance=..3,type=item]
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofnecros] at @s if score traker Time matches 13000..23000 run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 50 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofnecros] at @s if score traker Time matches 13000..23000 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 200
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofnecros] at @s if score traker Time matches 13000..23000 run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Soul Gem\",\"color\":\"green\"}"},HideFlags:63,Unbreakable:1b,CustomModelData:4,id:"soul_gem"}}}
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofnecros] at @s if score traker Time matches 13000..23000 run tag @s remove rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofnecros] if score traker Time matches 13000..23000 run tag @s remove ritualofnecros