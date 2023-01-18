
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60,var1=0}] ~ ~ ~ execute @e[tag=agent3] ~ ~ ~ particle rwm:barrier ~ ~1 ~
execute @s[scores={tick=60,var1=..1}] ~ ~ ~ execute @e[tag=agent4] ~ ~ ~ particle rwm:barrier ~ ~1 ~
execute @s[scores={tick=60,var1=..2}] ~ ~ ~ execute @e[tag=agent2] ~ ~ ~ particle rwm:barrier ~ ~1 ~
execute @s[scores={tick=60,var1=..3}] ~ ~ ~ execute @e[tag=agent1] ~ ~ ~ particle rwm:barrier ~ ~1 ~
execute @s[scores={tick=60,var1=..3}] ~ ~ ~ execute @e[tag=agent5] ~ ~ ~ particle rwm:barrier ~ ~1 ~
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cannon] reset
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:time_onion] show_rings
execute @s[scores={tick=1,var1=1..}] ~ ~ ~ event entity @e[type=rwm:time_onion] regenerate_1
execute @s[scores={tick=1,var1=2..}] ~ ~ ~ event entity @e[type=rwm:time_onion] regenerate_2
execute @s[scores={tick=1,var1=3..}] ~ ~ ~ event entity @e[type=rwm:time_onion] regenerate_3
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var1 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var2 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var3 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var4 0
execute @s[scores={tick=1}] ~ ~ ~ tag @s remove cannon_1
execute @s[scores={tick=1}] ~ ~ ~ tag @s remove cannon_2
execute @s[scores={tick=1}] ~ ~ ~ tag @s remove cannon_3
execute @s[scores={tick=1}] ~ ~ ~ tag @s remove cannon_4
execute @s[scores={tick=1}] ~ ~ ~ tag @e[type=rwm:time_agent] remove stunned
execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=agent1] 222 46 -586
execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=agent2] 223 47 -590
execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=agent3] 227 47 -590
execute @s[scores={tick=1}] ~ ~ ~ tp @e[tag=agent4] 228 46 -586
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:time_agent] lookat_add
execute @s[scores={tick=1}] ~ ~ ~ setblock 222 45 -586 barrier
execute @s[scores={tick=1}] ~ ~ ~ setblock 223 46 -590 barrier
execute @s[scores={tick=1}] ~ ~ ~ setblock 227 46 -590 barrier
execute @s[scores={tick=1}] ~ ~ ~ setblock 228 45 -586 barrier
execute @s[scores={tick=1}] ~ ~ ~ playsound respawn_anchor.set_spawn @a ~ ~ ~ 1 1 1
# execute @s[scores={tick=1}] ~ ~ ~ structure load "boss:timeorb" 217 48 -596
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
