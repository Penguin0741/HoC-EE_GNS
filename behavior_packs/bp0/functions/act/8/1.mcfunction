
scoreboard players set @a address 80100
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
summon rwm:cursor -119 102 171
event entity @e[type=rwm:cursor] offset
event entity @e[type=rwm:cursor] rot90

playsound tile.piston.in @a ~ ~ ~ 1 0.7 1
clone -116 72 168 -116 72 168 -116 71 168
fill -116 72 168 -116 73 168 air