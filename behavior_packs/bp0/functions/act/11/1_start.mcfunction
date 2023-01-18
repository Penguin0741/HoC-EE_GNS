
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ effect @e[type=rwm:time_agent] slow_falling 99999 0 true
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:time_agent,tag=agent1] goto_add
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:time_agent,tag=agent2] goto_add
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:time_agent,tag=agent3] goto_add
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:time_agent,tag=agent4] goto_add
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:time_agent,tag=agent1] movement_fly
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:time_agent,tag=agent2] movement_fly
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:time_agent,tag=agent3] movement_fly
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:time_agent,tag=agent4] movement_fly
execute @s[scores={tick=100}] ~ ~ ~ setblock 222 45 -586 air
execute @s[scores={tick=100}] ~ ~ ~ setblock 223 46 -590 air
execute @s[scores={tick=100}] ~ ~ ~ setblock 227 46 -590 air
execute @s[scores={tick=100}] ~ ~ ~ setblock 228 45 -586 air
execute @s[scores={tick=1..100}] ~ ~ ~ execute @e[type=rwm:utility,tag=!game] ~ ~ ~ event entity @e[type=rwm:time_agent,r=3] movement_walk
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:utility,tag=!game] despawn
execute @s[scores={tick=1}] ~ ~ ~ execute @e[type=rwm:time_agent,tag=!agent5] ~ ~ ~ particle rwm:sparkleburst ~ ~ ~
execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=agent1] 174 57 -547
execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=agent2] 184 59 -629
execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=agent3] 266 57 -629
execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=agent4] 253 52 -546
execute @s[scores={tick=1}] ~ ~ ~ setblock 174 56 -547 barrier
execute @s[scores={tick=1}] ~ ~ ~ setblock 184 58 -629 barrier
execute @s[scores={tick=1}] ~ ~ ~ setblock 266 56 -629 barrier
execute @s[scores={tick=1}] ~ ~ ~ setblock 253 51 -546 barrier
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:time_agent,r=2] movement_walk
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:time_agent] goto_remove
execute @s[scores={tick=1}] ~ ~ ~ tag @a remove dlgopened
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 3