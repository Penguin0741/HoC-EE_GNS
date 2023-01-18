
scoreboard players set @a address 110000
scoreboard players set @a tick 0
scoreboard players set @a hint 0
scoreboard players set @a var1 80
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

function act/11/load_1
function act/11/load_2

effect @a blindness 3 1 true
effect @a invisibility 3 1 true

playsound mob.shulker.teleport @a ~ ~ ~ 1 0.5 1