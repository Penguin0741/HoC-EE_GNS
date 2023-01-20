
scoreboard players set @a address 100700
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

tag @a remove dlgopened

# Despawn cursor
event entity @e[type=rwm:cursor] despawn

# Open left door
fill 41 75 31 40 72 33 air

# setblock 31 73 34 air 0
# setblock 39 73 34 air 0

event entity @e[tag=click_detector] despawn