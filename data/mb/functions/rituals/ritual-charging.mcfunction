execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"greater_catalist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run tag @e[tag=magicaltar,distance=..20,limit=1] add rorain
execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"greater_catalist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run tag @s add ritualofcharging
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"greater_catalist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run tag @s add rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"greater_catalist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run playsound minecraft:block.note_block.bell master @a[distance=..20] ~ ~ ~ 50 0.7
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"greater_catalist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run kill @e[distance=..3,type=item]
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofcharging] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 50 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofcharging] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 200
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofcharging] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:glowstone_dust",Count:1b,tag:{HideFlags:63,Enchantments:[{id:"minecraft:power",lvl:1}],CustomModelData:119,id:"charged_greater_caralist",display:{Name:"{\"text\":\"Charged Greater Catalist\",\"color\":\"green\"}"}}}}
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofcharging] at @s run tag @s remove rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofcharging] run tag @s remove ritualofcharging