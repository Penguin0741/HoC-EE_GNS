
scoreboard players set @a[scores={path=1}] address 110603
scoreboard players set @a[scores={path=2..3}] address 110600
scoreboard players set @a tick 0
scoreboard players set @a hint 0
scoreboard players set @a var1 0
scoreboard players set @a var2 0
scoreboard players set @a var3 0
scoreboard players set @a var4 0
scoreboard players set @a var5 0
scoreboard players set @a var6 0
scoreboard players set @a var7 0
scoreboard players set @a var8 0
scoreboard players set @a queue_delay 60
function url
tag @s remove debug_run

tag @a remove dlgopened

tag @s remove cannon_1
tag @s remove cannon_2
tag @s remove cannon_3
tag @s remove cannon_4

setblock 222 45 -586 barrier
setblock 223 46 -590 barrier
setblock 227 46 -590 barrier
setblock 228 45 -586 barrier
setblock 225 45 -588 barrier
tp @e[tag=agent1] 222 46 -586
tp @e[tag=agent2] 223 47 -590
tp @e[tag=agent3] 227 47 -590
tp @e[tag=agent4] 228 46 -586
tp @e[tag=agent5] 225 46 -588

event entity @e[type=rwm:time_agent] movement_walk