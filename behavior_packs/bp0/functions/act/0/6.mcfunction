
scoreboard players set @a address 00600
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

event entity @e[type=rwm:knockback_area] despawn

tp @s -12 70 -213 0 0

# structure save intro:cam_actor_2 -13 67 -213 -1 75 -160 true disk
structure load intro:cam_actor_2 -13 67 -213 0_degrees none true false

effect @a invisibility 1000000 0 true
tag @a add cam.ride

scoreboard players set @s cam.next 10
scoreboard players set @s cam.tick 0