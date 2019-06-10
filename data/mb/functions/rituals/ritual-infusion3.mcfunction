execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{planesi:1b}}}] run tag @e[tag=magicaltar,distance=..20,limit=1] add infusioncost
execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{planesi:1b}}}] run tag @s add ritualofinfusionII
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{planesi:1b}}}] run tag @s add rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{planesi:1b}}}] run playsound minecraft:block.note_block.bell master @a[distance=..20] ~ ~ ~ 50 0.7
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{planesi:1b}}}] run kill @e[distance=..3,type=item]
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionII] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 50 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionII] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 200
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionII] at @s run tag @p[distance=..7,tag=infused] remove soulotp
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionII] at @s run tag @p[distance=..7,tag=infused] remove fatei
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionII] at @s run tag @p[distance=..7,tag=infused] remove sotwi
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionII] at @s run tag @p[distance=..7,tag=infused] remove infused
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionII] at @s run tag @p[distance=..7,tag=!infused] add soulotp
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionII] at @s run tag @p[distance=..7,tag=!infused] add infused
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionII] at @s run scoreboard players set @p[distance=..7,tag=infused] PlayerInfP 950
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionII] at @s run tag @s remove rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionII] run tag @s remove ritualofinfusionII