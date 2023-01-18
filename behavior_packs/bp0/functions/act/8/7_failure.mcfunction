
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:barrier -119 80 198
execute @s[scores={tick=1}] ~ ~ ~ fill -117 78 198 -121 79 198 stonebrick
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] -119 108 198
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

particle rwm:border_2_ud_n -117 79 197
particle rwm:border_2_ud_n -122 79 197
particle rwm:border_5_ew_n -119 78 197
particle rwm:border_5_ew_n -119 80 197