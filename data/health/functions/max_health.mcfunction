##
 # max_health.mcfunction
 # 
 #
 # Created by .
##
data modify entity @s Attributes[] set value {Name:"minecraft:generic.max_health",Base:1024.0d}
data modify entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base set from entity @s Health