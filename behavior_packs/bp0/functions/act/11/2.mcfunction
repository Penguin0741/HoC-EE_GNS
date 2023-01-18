
scoreboard players set @a address 110200
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

summon rwm:cursor 224 91 -569
event entity @e[type=rwm:cursor] offset2
event entity @e[type=rwm:cursor] arrows_top
event entity @e[type=rwm:cursor] rot180

tag @a remove dlgopened