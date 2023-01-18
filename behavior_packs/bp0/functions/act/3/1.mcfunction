
scoreboard players set @a address 30100
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

summon rwm:cursor 13 102 169
event entity @e[type=rwm:cursor] offset
event entity @e[type=rwm:cursor] rot180

setblock 14 72 170 crimson_button 1
playsound block.end_portal_frame.fill @a ~ ~ ~ 1 1 1
structure load "room3:reset_sign" 13 72 170
particle rwm:sparkle_burst 13 72 170
execute @s[tag=!king] ~ ~ ~ setblock 40 72 167 polished_blackstone_button 1

event entity @e[type=rwm:queen] despawn
tag @e[type=rwm:queen] add old

summon rwm:queen 11 75 161
dialogue change @e[type=rwm:queen,tag=!old] npc.queen.0
event entity @e[type=rwm:queen] rotation1