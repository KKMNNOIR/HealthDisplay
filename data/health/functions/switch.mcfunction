gamerule sendCommandFeedback false
execute if score @s[tag=!DisplaySwitching] DisplaySwitch matches 0 run function health:on
execute if score @s[tag=!DisplaySwitching] DisplaySwitch matches 1 run function health:off
tag @s remove DisplaySwitching
tellraw @s[scores={DisplaySwitch=1}] ["",{"text":"Mob\u306e\u4f53\u529b","bold":true,"color":"green"},{"text":"\uff1a\u8868\u793a","bold":true}]
tellraw @s[scores={DisplaySwitch=0}] ["",{"text":"Mob\u306e\u4f53\u529b","bold":true,"color":"green"},{"text":"\uff1a\u975e\u8868\u793a","bold":true}]
schedule function health:return_gamerule 20t