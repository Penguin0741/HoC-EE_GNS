
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 40

execute @s[scores={tick=40}] ~ ~ ~ playsound random.orb @a ~ ~ ~ 1 1 1
execute @s[scores={tick=40}] ~ ~ ~ detect -143 73 119 lit_redstone_lamp 0 particle rwm:checkmark -143 74 119
execute @s[scores={tick=40}] ~ ~ ~ detect -143 73 121 lit_redstone_lamp 0 particle rwm:checkmark -143 74 121
execute @s[scores={tick=40}] ~ ~ ~ detect -143 73 123 lit_redstone_lamp 0 particle rwm:checkmark -143 74 123
execute @s[scores={tick=40}] ~ ~ ~ detect -143 73 125 lit_redstone_lamp 0 particle rwm:checkmark -143 74 125
execute @s[scores={tick=1}] ~ ~ ~ function act/9/6
