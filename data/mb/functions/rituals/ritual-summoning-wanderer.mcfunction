execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"charged_greater_caralist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"liquid_luck"}}}] run tag @e[tag=magicaltar,distance=..20,limit=1] add rlp
execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"charged_greater_caralist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"liquid_luck"}}}] run tag @s add ritualofthetrader
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"charged_greater_caralist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"liquid_luck"}}}] run tag @s add rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"charged_greater_caralist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"liquid_luck"}}}] run playsound minecraft:block.note_block.bell master @a[distance=..20] ~ ~ ~ 250 0.7
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"charged_greater_caralist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"liquid_luck"}}}] run kill @e[distance=..3,type=item]
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofthetrader] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 50 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofthetrader] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 200
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofthetrader] at @s run summon minecraft:wandering_trader ~ ~ ~
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofthetrader] at @s run tag @s remove rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofthetrader] run tag @s remove ritualofthetrader