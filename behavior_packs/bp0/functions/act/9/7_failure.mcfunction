
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ detect -143 73 119 redstone_lamp 0 particle rwm:barrier -143 74 119
execute @s[scores={tick=60}] ~ ~ ~ detect -143 73 121 redstone_lamp 0 particle rwm:barrier -143 74 121
execute @s[scores={tick=60}] ~ ~ ~ detect -143 73 123 redstone_lamp 0 particle rwm:barrier -143 74 123
execute @s[scores={tick=60}] ~ ~ ~ detect -143 73 125 redstone_lamp 0 particle rwm:barrier -143 74 125
execute @s[scores={tick=60}] ~ ~ ~ detect -143 73 119 lit_redstone_lamp 0 particle rwm:checkmark -143 74 119
execute @s[scores={tick=60}] ~ ~ ~ detect -143 73 121 lit_redstone_lamp 0 particle rwm:checkmark -143 74 121
execute @s[scores={tick=60}] ~ ~ ~ detect -143 73 123 lit_redstone_lamp 0 particle rwm:checkmark -143 74 123
execute @s[scores={tick=60}] ~ ~ ~ detect -143 73 125 lit_redstone_lamp 0 particle rwm:checkmark -143 74 125
execute @s[scores={tick=1}] ~ ~ ~ structure load "room9:greenline" -134 73 118
execute @s[scores={tick=1}] ~ ~ ~ structure load "room9:yellowline" -137 73 118
execute @s[scores={tick=1}] ~ ~ ~ structure load "room9:redline" -140 73 118
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var1 2
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
