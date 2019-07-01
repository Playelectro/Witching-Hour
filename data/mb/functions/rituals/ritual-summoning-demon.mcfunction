execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=500..}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{id:"liquid_luck"}}}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{id:"horror_dust"}}}] if entity @e[type=villager,distance=..5,limit=1] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:apple",Count:1b}}] run tag @e[tag=magicaltar,distance=..20,limit=1] add demonsummon
execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=500..}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{id:"liquid_luck"}}}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{id:"horror_dust"}}}] if entity @e[type=villager,distance=..5,limit=1] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:apple",Count:1b}}] run tag @s add ritualofsummoningdemon
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=500..}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{id:"liquid_luck"}}}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{id:"horror_dust"}}}] if entity @e[type=villager,distance=..5,limit=1] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:apple",Count:1b}}] run tag @s add rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=500..}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{id:"liquid_luck"}}}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{id:"horror_dust"}}}] if entity @e[type=villager,distance=..5,limit=1] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:apple",Count:1b}}] run playsound minecraft:block.note_block.bell master @a[distance=..20] ~ ~ ~ 50 0.7
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=500..}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{id:"liquid_luck"}}}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{id:"horror_dust"}}}] if entity @e[type=villager,distance=..5,limit=1] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:apple",Count:1b}}] run tag @s add deletingv
execute as @e[tag=deletingv] at @s run kill @e[type=item,distance=..5]
execute as @e[tag=deletingv] at @s run kill @e[type=villager,limit=1,distance=..5]
execute as @e[tag=deletingv] at @s run tag @s remove deletingv
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofsummoningdemon] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 50 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofsummoningdemon] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 200
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofsummoningdemon] at @s run summon vex ~ ~ ~ {DeathLootTable:"mb:entities/demon",Silent:1b,PersistenceRequired:1b,Health:50f,LifeTicks:199980,Tags:["inv","demon"],Attributes:[{Name:generic.maxHealth,Base:50},{Name:generic.attackDamage,Base:6},{Name:generic.armor,Base:5},{Name:generic.armorToughness,Base:5}],CustomName:"\"Demon\""}
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofsummoningdemon] at @s run tag @s remove rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofsummoningdemon] run tag @s remove ritualofsummoningdemon
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofsummoningdemon] at @s run scoreboard players reset @s Timer