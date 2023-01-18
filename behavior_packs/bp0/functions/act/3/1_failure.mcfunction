
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:barrier ~ ~-28.5 ~
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] 13 102 169
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

particle rwm:border_5_ud_e 12 74 169
particle rwm:border_5_ud_e 12 74 162
particle rwm:border_7_ns_e 12 77 166
particle rwm:border_7_ns_e 12 72 166

execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 72 168
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 73 168
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 72 167
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 73 167
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 72 168
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 72 167
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 72 166

execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 73 166
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 74 166
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 73 165
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 74 165
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 73 166
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 73 165
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 73 164

execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 74 164
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 75 164
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 74 163
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 75 163
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 74 164
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 74 163
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 74 162