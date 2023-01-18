
scoreboard players set @a address 70503
scoreboard players set @a tick 0
scoreboard players set @a hint 0
scoreboard players set @a var1 0
scoreboard players set @a var2 1
scoreboard players set @a var3 0
scoreboard players set @a var4 0
scoreboard players set @a var5 0
scoreboard players set @a var6 0
scoreboard players set @a var7 0
scoreboard players set @a var8 0
scoreboard players set @a queue_delay 10
function url
tag @s remove debug_run

tp @e[type=rwm:enderman_butler] -128 82 49
event entity @e[type=rwm:enderman_butler] add_goto

summon rwm:utility 0 64 0
tag @e[type=rwm:utility,tag=!game] add target