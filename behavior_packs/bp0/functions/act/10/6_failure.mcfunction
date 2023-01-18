
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ detect 26 79 31 trapdoor 14 particle rwm:checkmark 26 78 31
execute @s[scores={tick=60}] ~ ~ ~ detect 26 79 33 trapdoor 14 particle rwm:checkmark 26 78 33
execute @s[scores={tick=60}] ~ ~ ~ detect 24 79 33 trapdoor 14 particle rwm:checkmark 24 78 33
execute @s[scores={tick=60}] ~ ~ ~ detect 24 79 31 trapdoor 14 particle rwm:checkmark 24 78 31
execute @s[scores={tick=60}] ~ ~ ~ detect 26 79 31 trapdoor 3 particle rwm:barrier 26 78 31
execute @s[scores={tick=60}] ~ ~ ~ detect 26 79 33 trapdoor 3 particle rwm:barrier 26 78 33
execute @s[scores={tick=60}] ~ ~ ~ detect 24 79 33 trapdoor 3 particle rwm:barrier 24 78 33
execute @s[scores={tick=60}] ~ ~ ~ detect 24 79 31 trapdoor 3 particle rwm:barrier 24 78 31
execute @s[scores={tick=1}] ~ ~ ~ setblock 26 79 31 trapdoor 3
execute @s[scores={tick=1}] ~ ~ ~ setblock 26 79 33 trapdoor 3
execute @s[scores={tick=1}] ~ ~ ~ setblock 24 79 33 trapdoor 3
execute @s[scores={tick=1}] ~ ~ ~ setblock 24 79 31 trapdoor 3
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:moon_beam,c=1] reset
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] 26 109 31
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

particle rwm:border_3_ew_d 25 79 33
particle rwm:border_3_ew_d 25 79 30
particle rwm:border_3_ns_d 26 79 32
particle rwm:border_3_ns_d 23 79 32