
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ particle rwm:barrier ~ ~3 ~
#execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=target] -128 76 73
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:enderman_butler] -128 76 73
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

# Borders
particle rwm:border_7_ns_u -133 81 66
particle rwm:border_7_ns_u -124 81 66
particle rwm:border_5_ns_u -130 81 72
particle rwm:border_5_ns_u -127 81 72
particle rwm:border_5_ns_u -130 81 60
particle rwm:border_5_ns_u -127 81 60
particle rwm:border_3_ew_u -131 81 62
particle rwm:border_3_ew_u -128 81 57
particle rwm:border_3_ew_u -125 81 62
particle rwm:border_3_ew_u -125 81 69
particle rwm:border_3_ew_u -128 81 74
particle rwm:border_3_ew_u -131 81 69