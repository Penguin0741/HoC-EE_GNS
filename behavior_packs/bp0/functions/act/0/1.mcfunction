
scoreboard players set @a address 00100
scoreboard players set @a var1 40
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

effect @s blindness 2 0 true
effect @s invisibility 1 1 true
event entity @e[type=rwm:actor] despawn
event entity @e[type=rwm:cam] despawn
tag @s remove cam.ride

tp @a[tag=main_player] -12 67 -262 0 0

playsound chime.amethyst_block @a ~ ~ ~ 1 1 1
setblock -12 68 -261 air

tag @s remove dlgopened