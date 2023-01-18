
scoreboard players set @a address 30700
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

fill 28 76 156 30 71 157 air

tp @s 29 73 173 -180 0

# structure save foyer:cam_actor 29 71 157 29 74 173 true disk
structure load foyer:cam_actor 29 71 157 0_degrees none true false

effect @a invisibility 1000000 0 true
tag @a add cam.ride

scoreboard players set @s cam.next 10
scoreboard players set @s cam.tick 0

dialogue change @e[type=rwm:king] npc.king.0
dialogue change @e[type=rwm:queen] npc.queen.0