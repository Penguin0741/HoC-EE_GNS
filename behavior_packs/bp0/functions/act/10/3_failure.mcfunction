
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:barrier ~ ~-28.5 ~
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] 25 101 29
execute @s[scores={tick=1}] ~ ~ ~ setblock 25 71 32 trapdoor 4
execute @s[scores={tick=1}] ~ ~ ~ dialogue open @e[type=rwm:fake_agent] @s npc.agent.1.4
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

particle rwm:border_3_ew_u 25 72 33
particle rwm:border_3_ew_u 25 72 28
particle rwm:border_5_ns_u 26 72 31
particle rwm:border_5_ns_u 23 72 31