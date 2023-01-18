
scoreboard players set @a address 50200
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
summon rwm:cursor -55 108 41
event entity @e[type=rwm:cursor] offset
event entity @e[type=rwm:cursor] rot270

setblock -53 78 41 flowing_water 0 destroy
setblock -53 80 40 redstone_block

playsound tile.piston.in @a ~ ~ ~ 1 0.7 1
fill -56 74 47 -56 73 47 air