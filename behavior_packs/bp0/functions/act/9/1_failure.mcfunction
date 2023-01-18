
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 121 redstone_lamp 0 particle rwm:barrier -106 78 121
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 122 redstone_lamp 0 particle rwm:barrier -106 78 122
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 123 redstone_lamp 0 particle rwm:barrier -106 78 123
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 124 redstone_lamp 0 particle rwm:barrier -106 78 124
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 125 redstone_lamp 0 particle rwm:barrier -106 78 125
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 126 redstone_lamp 0 particle rwm:barrier -106 78 126
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 127 redstone_lamp 0 particle rwm:barrier -106 78 127
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 121 lit_redstone_lamp 0 particle rwm:checkmark -106 78 121
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 122 lit_redstone_lamp 0 particle rwm:checkmark -106 78 122
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 123 lit_redstone_lamp 0 particle rwm:checkmark -106 78 123
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 124 lit_redstone_lamp 0 particle rwm:checkmark -106 78 124
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 125 lit_redstone_lamp 0 particle rwm:checkmark -106 78 125
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 126 lit_redstone_lamp 0 particle rwm:checkmark -106 78 126
execute @s[scores={tick=60}] ~ ~ ~ detect -107 78 127 lit_redstone_lamp 0 particle rwm:checkmark -106 78 127
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] -107 108 127
execute @s[scores={tick=1}] ~ ~ ~ fill -108 78 121 -108 78 127 air
execute @s[scores={tick=1}] ~ ~ ~ setblock -108 78 127 redstone_block
execute @s[scores={tick=1}] ~ ~ ~ structure load "room9:door2" -108 77 117
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
