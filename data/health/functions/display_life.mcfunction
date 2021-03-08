execute store result score @s current_health run data get entity @s Health
execute store result score @s max_health run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
effect give @s minecraft:glowing 1 0 true
title @a[distance=..24] actionbar [{"selector":"@s","bold":true},{"text":":","bold":true},{"score":{"name":"@s","objective":"current_health"},"bold":true},{"text":"/","bold":true},{"score":{"name":"@s","objective":"max_health"},"bold":true}]