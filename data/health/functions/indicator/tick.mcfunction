execute as @e[type=!#health:not_valid] at @s unless data entity @s {HurtTime:10s} store result score @s beforeHealth run data get entity @s Health
execute as @e[nbt={HurtTime:10s}] at @s run function health:indicator/operation

#Kill Armor Stand
execute as @e[tag=damageIndicator,nbt=!{ActiveEffects:[{Id:25b,Amplifier:0b}]}] at @s run kill @s