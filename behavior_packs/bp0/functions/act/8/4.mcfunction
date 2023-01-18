
scoreboard players set @a address 80400
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

summon rwm:zombie_minion -115 78 185
dialogue change @e[type=rwm:zombie_minion] npc.zombie_minion.0
summon rwm:utility -115 78 190
tag @e[type=rwm:utility] add target

event entity @e[type=rwm:wind_cube] despawn