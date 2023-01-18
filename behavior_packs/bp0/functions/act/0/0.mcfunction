
scoreboard players set @a address 00000
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

tp @s -12 68.5 -290 180 0

# structure save intro:cam_actor_1a -14 72 -355 25 80 -350 true disk
structure load intro:cam_actor_1a -14 72 -355 0_degrees none true false

# structure save intro:cam_actor_1b -14 69 -326 -10 77 -287 true disk
structure load intro:cam_actor_1b -14 69 -326 0_degrees none true false

effect @a invisibility 1000000 0 true
tag @s add cam.ride

scoreboard players set @s cam.next 10
scoreboard players set @s cam.tick 0