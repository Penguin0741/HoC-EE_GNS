
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ detect -111 76 179 air 0 particle rwm:barrier -112 77 179
execute @s[scores={tick=60}] ~ ~ ~ detect -111 77 181 air 0 particle rwm:barrier -112 78 181
execute @s[scores={tick=60}] ~ ~ ~ detect -111 76 183 air 0 particle rwm:barrier -112 77 183
execute @s[scores={tick=60}] ~ ~ ~ detect -111 76 179 gold_block 0 particle rwm:checkmark -112 77 179
execute @s[scores={tick=60}] ~ ~ ~ detect -111 77 181 gold_block 0 particle rwm:checkmark -112 78 181
execute @s[scores={tick=60}] ~ ~ ~ detect -111 76 183 gold_block 0 particle rwm:checkmark -112 77 183
execute @s[scores={tick=1}] ~ ~ ~ setblock -111 76 179 air
execute @s[scores={tick=1}] ~ ~ ~ setblock -111 77 181 air
execute @s[scores={tick=1}] ~ ~ ~ setblock -111 76 183 air
execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=wind_1] -111 76 179
execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=wind_2] -111 77 181
execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=wind_3] -111 76 183
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] -111 106 178
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

particle rwm:border_4_ud_w -112 77 177
particle rwm:border_4_ud_w -112 77 184
particle rwm:border_7_ns_w -112 75 181
particle rwm:border_7_ns_w -112 79 181