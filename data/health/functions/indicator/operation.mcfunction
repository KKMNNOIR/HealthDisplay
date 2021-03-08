#ダメージ後HPスコアと差分の計算
execute store result score @s afterHealth run data get entity @s Health
execute store result score @s difference run scoreboard players operation @s beforeHealth -= @s afterHealth

#看板に代入
execute if score @s difference matches 0.. run data merge block 0 0 0 {Text1:'{"score":{"name":"@s","objective":"difference"},"color":"red"}}'}
execute if score @s difference matches ..0 run data merge block 0 0 0 {Text1:'{"score":{"name":"@s","objective":"difference"},"color":"green"}}'}

#アマスタ召喚
execute at @s run summon minecraft:armor_stand ~ ~0.5 ~ {CustomNameVisible:1b,Small:1b,Marker:1b,ActiveEffects:[{Id:25b,Amplifier:0b,Duration:20,ShowParticles:0b}],DisabledSlots:4144959,NoGravity:1b,Tags:["damageIndicator"],Motion:[0.0,0.325,0.0]}

#アマスタに代入
execute as @e[tag=damageIndicator] at @s run data modify entity @s CustomName set from block 0 0 0 Text1
