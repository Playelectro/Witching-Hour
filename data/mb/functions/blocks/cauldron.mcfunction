execute as @e[type=item,nbt={Item:{tag:{id:"roots"},Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:blue_orchid",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}},distance=..1] if block ~ ~ ~ cauldron[level=3] unless entity @e[tag=cauldron,distance=..1] run summon leash_knot ~ ~ ~ {Tags:["mcc"]}
execute as @e[tag=mcc] at @s run kill @e[type=item,distance=..1]
execute as @e[tag=mcc] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["cauldron"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:131}}]}
execute as @e[tag=mcc] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[tag=mcc] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3
execute as @e[tag=mcc] run kill @s
execute as @e[tag=cauldron] at @s if block ~ ~ ~ air run kill @s
execute as @e[type=armor_stand,tag=cauldron,tag=timer] at @s run scoreboard players add @s Timer 1
execute as @e[tag=cauldron,tag=timer] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0.1 1
execute as @e[type=armor_stand,tag=cauldron,scores={Timer=240..}] at @s run tag @s add done
execute as @e[tag=cauldron] run scoreboard players add @s ParticleTimer 1
execute as @e[tag=cauldron,scores={ParticleTimer=40}] at @s unless block ~ ~ ~ cauldron[level=0] if block ~ ~-1 ~ fire run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0.2 0 0.2 0
execute as @e[tag=cauldron,scores={ParticleTimer=40}] run scoreboard players reset @s ParticleTimer
execute as @e[type=item,tag=!nosplash] at @s if entity @e[tag=cauldron] if block ~ ~ ~ cauldron[level=3] run playsound minecraft:entity.boat.paddle_water master @a[distance=..10] ~ ~ ~ 100 1
execute as @e[type=item,tag=!nosplash] at @s if entity @e[tag=cauldron] if block ~ ~ ~ cauldron[level=3] run particle minecraft:rain ~ ~ ~ 0 0 0 1 40
execute as @e[type=item] at @s if entity @e[tag=cauldron] if block ~ ~ ~ cauldron[level=3] run tag @s add nosplash

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:oak_sapling",Count:3b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-botmg
execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:jungle_sapling",Count:3b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-botmg
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rmgb] at @s run function mb:items/ingredients/potion-botmg

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:spruce_sapling",Count:3b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-hoa
execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:dark_oak_sapling",Count:3b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-hoa
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rhoa] at @s run function mb:items/ingredients/potion-hoa

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:birch_sapling",Count:3b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-lp
execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling",Count:3b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-lp
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rlop] at @s run function mb:items/ingredients/potion-lp

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:cactus",Count:5b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-oot
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=roop] at @s run function mb:items/ingredients/potion-oot

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:4b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-ef
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=lpp] at @s run function mb:items/ingredients/potion-ef

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh",Count:8b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-fu
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=fup] at @s run function mb:items/ingredients/potion-fu

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-lf
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=lfp] at @s run function mb:items/ingredients/potion-lf

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"breath_of_the_moss_guardian"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-skyt
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rst] at @s run function mb:items/ingredients/potion-skyt

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:potato",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"hint_of_ageing"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/item-poison_potato
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rpp] at @s run function mb:items/ingredients/item-poison_potato

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:magma_cream",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"liquid_of_purity"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/item-slime_ball
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rsb] at @s run function mb:items/ingredients/item-slime_ball

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:slime_ball",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"living_flame"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"fleshy_unguent"}}}] run function mb:items/ingredients/item-horror_dust
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rsep] at @s run function mb:items/ingredients/item-horror_dust

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:slime_ball",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"living_flame"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"horror_dust"}}}] run function mb:items/ingredients/item-toe_of_frog
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rsf] at @s run function mb:items/ingredients/item-toe_of_frog

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"fleshy_unguent"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"oli_of_thorns"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-bp
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbp] at @s run function mb:items/ingredients/potion-bp

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"oli_of_thorns"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"diamond_vapor"},Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"living_flame"},Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"eternal_hunger"},Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=250..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-lq
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rglp] at @s run function mb:items/ingredients/potion-lq

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"hint_of_ageing"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"looping_fumes"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-eh
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rehp] at @s run function mb:items/ingredients/potion-eh

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"hint_of_ageing"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"breath_of_the_moss_guardian"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-nt
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rntp] at @s run function mb:items/ingredients/potion-nt

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"liquid_of_purity"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"fleshy_unguent"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/item-leather
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rcl] at @s run function mb:items/ingredients/item-leather

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"looping_fumes"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"living_flame"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/item-catalist
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rpc] at @s run function mb:items/ingredients/item-catalist

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"oli_of_thorns"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:ink_sac",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:charcoal",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-darkness
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbblindness] at @s run function mb:items/potions/brew-darkness

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"liquid_of_purity"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"wool_of_bat"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:snowball",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-truth
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbtruth] at @s run function mb:items/potions/brew-truth

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"bottled_pain"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"noxious_timing"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b,tag:{toeoffrog:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-cleaping
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbocl] at @s run function mb:items/potions/brew-cleaping

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"breath_of_the_moss_guardian"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:packed_ice",Count:4b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"skys_tear"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-frost
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbofrost] at @s run function mb:items/potions/brew-frost

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"noxious_timing"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"wool_of_bat"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:cobweb",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"horror_dust"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-webs
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbotwebs] at @s run function mb:items/potions/brew-webs

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"eternal_hunger"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"noxious_timing"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"oli_of_thorns"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:tnt",Count:3b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"bottled_pain"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-tnt
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboctnt] at @s run function mb:items/potions/brew-tnt

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"looping_fumes"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"brew_of_tangeled_webs"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-entrap
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboentrapment] at @s run function mb:items/potions/brew-entrap

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"living_flame"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"eternal_hunger"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:coal",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-comb
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboignition] at @s run function mb:items/potions/brew-comb

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"bottled_pain"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"wool_of_bat"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"skys_tear"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"liquid_of_purity"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-lightning
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbolightning] at @s run function mb:items/potions/brew-lightning

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"hint_of_ageing"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"catalist"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"tounge_of_dog"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"liquid_luck"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b,tag:{toeoffrog:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-patience
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboticks] at @s run function mb:items/potions/brew-patience

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"eternal_hunger"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:rotten_flesh",Count:3b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-hunger
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbohunger] at @s run function mb:items/potions/brew-hunger

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"breath_of_the_moss_guardian"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:wheat",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lily_pad",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:cookie",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:golden_apple",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-love
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbolove] at @s run function mb:items/potions/brew-love

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"fleshy_unguent"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:stone",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"roots"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-stoneskin
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbostoneskin] at @s run function mb:items/potions/brew-stoneskin

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"fleshy_unguent"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:bone",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"breath_of_the_moss_guardian"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1,tag=rboraising] if block ~ ~-1 ~ fire run function mb:items/potions/brew-raising
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboraising] at @s run function mb:items/potions/brew-raising

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"looping_fumes"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"wool_of_bat"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lily_of_the_valley",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"noxious_timing"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-ender
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboenderchaos] at @s run function mb:items/potions/brew-ender

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"hint_of_ageing"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:cobblestone",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:stone_pickaxe",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-cobble
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbocobble] at @s run function mb:items/potions/brew-cobble

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"breath_of_the_moss_guardian"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"tounge_of_dog"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"skys_tear"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-forest
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboforest] at @s run function mb:items/potions/brew-forest

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"skys_tear"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:bone",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:quartz",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/active/active-wchalk
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rchalkw] at @s run function mb:items/active/active-wchalk

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"white_chalk"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:sunflower",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/active/active-gchalk
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rchalkg] at @s run function mb:items/active/active-gchalk

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"white_chalk"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:nether_wart",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/active/active-ichalk
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rchalki] at @s run function mb:items/active/active-ichalk

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"catalist"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/item-gcatalist
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rgcatalist] at @s run function mb:items/ingredients/item-gcatalist

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"bottled_pain"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:healing"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-bhealing
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbobhealing] at @s run function mb:items/potions/brew-bhealing

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{demonhearth:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-demonblood
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rdblood] at @s run function mb:items/ingredients/potion-demonblood

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{id:"bottled_pain"}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"tounge_of_dog"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"evil_blood"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"eternal_hunger"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-tleech
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboleech] at @s run function mb:items/potions/brew-tleech

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{id:"brew_of_the_leech"}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"wool_of_bat"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:fermented_spider_eye",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:rotten_flesh",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-infection
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboinfection] at @s run function mb:items/potions/brew-infection

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:poppy",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:dandelion",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:cornflower",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lily_of_the_valley",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-mystery
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbomistery] at @s run function mb:items/potions/brew-mystery

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:quartz_block",Count:6b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/quartz-ball
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rqurtzsphere] at @s run function mb:items/ingredients/quartz-ball

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{id:"liquid_luck"}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"tounge_of_dog"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:apple",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=200..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/redstone-soup
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rredstonesoup] at @s run function mb:items/ingredients/redstone-soup

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{id:"redstone_soup"}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"evil_blood"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:oak_sapling",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=200..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/mystic-ointment
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rmysticointment] at @s run function mb:items/ingredients/mystic-ointment

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/diamond-vapor
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rdvpotion] at @s run function mb:items/ingredients/diamond-vapor

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:bone",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/active/tag-lock
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rtgk] at @s run function mb:items/active/tag-lock

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{id:"redstone_soup"}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:fermented_spider_eye",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:brown_mushroom",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/blind-eye-infusion
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=riotbe] at @s run function mb:items/ingredients/blind-eye-infusion

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{id:"redstone_soup"}}},distance=..1] if entity @e[type=item,nbt={Item:{tag:{id:"looping_fumes"}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:golden_apple",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/infusion-planes
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=riotp] at @s run function mb:items/ingredients/infusion-planes

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{id:"redstone_soup"}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:sunflower",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:jack_o_lantern",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:clock",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/infusion-fortune
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=riof] at @s run function mb:items/ingredients/infusion-fortune

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{id:"redstone_soup"}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:vine",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lily_pad",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/soul-world-infusion
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=riol] at @s run function mb:items/ingredients/soul-world-infusion

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{crownm:1b}}},distance=..1] if entity @e[type=item,nbt={Item:{tag:{naturecore:1b}}},distance=..1] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/active/moss-crown-complete
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rmcf] at @s run function mb:items/active/moss-crown-complete



execute as @e[type=armor_stand,tag=cauldron,scores={Timer=240..}] at @s run function
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done] at @s run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done] at @s run setblock ~ ~ ~ cauldron[level=0]
execute as @e[type=armor_stand,tag=cauldron,tag=done] at @s run tag @s remove done
execute as @e[type=armor_stand,tag=cauldron,scores={Timer=240..}] at @s run tag @s remove timer
execute as @e[type=armor_stand,tag=cauldron,scores={Timer=240..}] at @s run scoreboard players reset @s Timer