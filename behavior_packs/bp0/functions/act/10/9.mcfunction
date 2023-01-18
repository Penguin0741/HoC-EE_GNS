
scoreboard players set @a address 100900
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

# Open green door
fill 9 75 33 10 72 31 air

# Open yellow door
fill 26 75 48 24 72 47 air

# Open red door
fill 41 75 31 40 72 33 air

setblock 31 73 34 air 0
setblock 39 73 34 air 0

event entity @e[tag=click_detector] despawn