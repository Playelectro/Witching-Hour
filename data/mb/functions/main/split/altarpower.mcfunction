execute as @e[tag=magicaltar,tag=activated,scores={PTD=5..}] at @s run particle minecraft:enchant ~ ~1 ~ 0 0 0 3 5 force
execute as @e[tag=magicaltar,tag=activated,scores={PTD=5}] unless score @s Power = @s MaxPower run scoreboard players add @s Power 1
scoreboard players reset @e[tag=magicaltar,scores={PTD=5..}] PTD
execute as @a[] at @s if entity @e[tag=magicaltar,distance=..4,tag=activated] run scoreboard players operation @s Power = @e[tag=magicaltar,distance=..4] Power
execute as @a[] at @s if entity @e[tag=magicaltar,distance=..4,tag=activated] run scoreboard players operation @s MaxPower = @e[tag=magicaltar,distance=..4] MaxPower
execute as @a[] at @s if entity @e[tag=magicaltar,distance=..4,tag=activated] run title @s actionbar [{"score":{"name":"*","objective":"Power"},"color":"dark_green","bold":"true"},{"text":" / ","color":"reset"},{"score":{"name":"*","objective":"MaxPower"},"color":"dark_red","bold":"true"}]
execute as @e[tag=magicaltar,scores={Power=1..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",Count:1b}},distance=..2,nbt=!{Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] run loot spawn ~ ~ ~ loot mb:items/magic_bottle
execute as @e[tag=magicaltar,scores={Power=1..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",Count:1b}},distance=..2,nbt=!{Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] run scoreboard players remove @s Power 1
execute as @e[tag=magicaltar,scores={Power=1..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",Count:1b}},distance=..2,nbt=!{Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] run kill @e[type=item,distance=..2,nbt=!{Item:{id:"minecraft:glass_bottle",tag:{CustomModelData:1}}}]