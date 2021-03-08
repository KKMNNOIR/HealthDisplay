# Set max health
execute as @e[type=!#health:not_valid,nbt=!{Attributes:[{Name:"minecraft:generic.max_health"}]}] run function health:max_health

#足を基準にする
execute as @e[type=!#health:not_valid] at @s rotated as @a[distance=..24,scores={DisplaySwitch=1}] positioned ^ ^ ^24 facing entity @a feet positioned ^ ^ ^24 positioned ~ ~ ~ run execute at @s[distance=..0.4] run function health:display_life

#目を基準にする
execute as @e[type=!#health:not_valid] at @s rotated as @a[distance=..24,scores={DisplaySwitch=1}] positioned ^ ^ ^24 facing entity @a eyes positioned ^ ^ ^24 positioned ~ ~ ~ run execute at @s[distance=..0.4] run function health:display_life