
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:barrier ~ ~-28.5 ~
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] -119 102 171
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

particle rwm:border_3_ud_n -122 73 171
particle rwm:border_3_ud_n -117 73 171
particle rwm:border_5_ew_n -119 72 171
particle rwm:border_5_ew_n -119 75 171