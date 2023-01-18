
scoreboard players set @a address 110800
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

event entity @e[type=rwm:tarra] despawn

tp @s 225 44 -594 0 0

# /structure save boss:cam_actor 225 41 -598 225 49 -563 true disk
structure load boss:cam_actor 225 41 -598 0_degrees none true false
structure load boss:cam_tarra 221 42 -576 0_degrees none true false

effect @a invisibility 1000000 0 true
tag @a add cam.ride

scoreboard players set @s cam.next 10
scoreboard players set @s cam.tick 0

fill 214 40 -599 236 40 -577 stained_glass 0 replace iron_block