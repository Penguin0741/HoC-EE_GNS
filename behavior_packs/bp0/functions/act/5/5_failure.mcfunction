
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ particle rwm:big_barrier -53.1 78 79
execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=1}] ~ ~ ~ structure load "room5:flowerbeds" -56 76 78
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] -51 106 80
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

particle rwm:border_3_ns_u -51 76.5 79
particle rwm:border_3_ns_u -57 76.5 79
particle rwm:border_6_ew_u -53.5 76.5 80
particle rwm:border_6_ew_u -53.5 76.5 77