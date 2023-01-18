
scoreboard players set @a address 60400
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

summon minecart -38 79 183 rider_5
summon minecart -37 79 183 rider_4
summon minecart -36 79 183 rider_5
summon minecart -35 79 183 rider_6
summon minecart -34 79 183 rider_6
summon minecart -33 79 183 rider_4
summon minecart -32 79 183 rider_4
scoreboard players set @e[type=minecart] var1 0

tag @e[type=rwm:diner_zombie] add rider
tag @e[type=rwm:diner_skeleton] add rider
tag @e[type=rwm:diner_creeper] add rider