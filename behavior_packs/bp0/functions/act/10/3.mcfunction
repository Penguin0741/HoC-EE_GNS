
scoreboard players set @a address 100300
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

tag @a remove dlgopened

fill 25 101 29 25 101 33 structure_void

# special cursor variant with 1 arrow
event entity @e[type=rwm:cursor] despawn
summon rwm:cursor 25 101 29
event entity @e[type=rwm:cursor] offset
event entity @e[type=rwm:cursor] arrows_single

scoreboard players set @a agent 1