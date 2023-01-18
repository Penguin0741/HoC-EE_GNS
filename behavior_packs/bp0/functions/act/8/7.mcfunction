
scoreboard players set @a address 80700
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
scoreboard players set @a queue_delay 10
function url
tag @s remove debug_run

event entity @e[type=rwm:cursor] despawn
summon rwm:cursor -119 108 198
event entity @e[type=rwm:cursor] offset
event entity @e[type=rwm:cursor] rot90

fill -118 78 202 -120 81 201 air