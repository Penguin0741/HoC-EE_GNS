
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ detect 224 41 -567 concrete 2 tag @s add correct1
execute @s[scores={tick=60}] ~ ~ ~ detect 224 41 -569 concrete 4 tag @s add correct2
execute @s[scores={tick=60}] ~ ~ ~ detect 226 41 -569 concrete 3 tag @s add correct3
execute @s[scores={tick=60}] ~ ~ ~ detect 226 41 -567 concrete 5 tag @s add correct4
execute @s[scores={tick=60},tag=correct1] ~ ~ ~ particle rwm:checkmark 224 42 -567
execute @s[scores={tick=60},tag=correct2] ~ ~ ~ particle rwm:checkmark 224 42 -569
execute @s[scores={tick=60},tag=correct3] ~ ~ ~ particle rwm:checkmark 226 42 -569
execute @s[scores={tick=60},tag=correct4] ~ ~ ~ particle rwm:checkmark 226 42 -567
execute @s[scores={tick=60},tag=!correct1] ~ ~ ~ particle rwm:barrier 224 41.5 -567
execute @s[scores={tick=60},tag=!correct2] ~ ~ ~ particle rwm:barrier 224 41.5 -569
execute @s[scores={tick=60},tag=!correct3] ~ ~ ~ particle rwm:barrier 226 41.5 -569
execute @s[scores={tick=60},tag=!correct4] ~ ~ ~ particle rwm:barrier 226 41.5 -567
execute @s[scores={tick=1}] ~ ~ ~ tag @s remove correct1
execute @s[scores={tick=1}] ~ ~ ~ tag @s remove correct2
execute @s[scores={tick=1}] ~ ~ ~ tag @s remove correct3
execute @s[scores={tick=1}] ~ ~ ~ tag @s remove correct4
execute @s[scores={tick=1}] ~ ~ ~ fill 224 41 -567 226 41 -569 air 0 replace concrete
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] 224 91 -569
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

particle rwm:border_3_ew_u 225 42 -570
particle rwm:border_3_ew_u 225 42 -567
particle rwm:border_3_ns_u 223 42 -568
particle rwm:border_3_ns_u 226 42 -568