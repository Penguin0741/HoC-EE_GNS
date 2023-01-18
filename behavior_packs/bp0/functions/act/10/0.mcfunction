
scoreboard players set @a address 100000
scoreboard players set @a tick 0
scoreboard players set @a hint 0
scoreboard players set @a var1 5
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
tag @a remove cam.ride
event entity @e[type=rwm:cam] despawn
event entity @e[type=rwm:actor] despawn
effect @s blindness 2 0 true