
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:big_barrier -42 79 191

execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=minecart] despawn
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[tag=rider] despawn

execute @s[scores={tick=1}] ~ ~ ~ summon minecart -38 79 183 rider_5
execute @s[scores={tick=1}] ~ ~ ~ summon minecart -37 79 183 rider_4
execute @s[scores={tick=1}] ~ ~ ~ summon minecart -36 79 183 rider_5
execute @s[scores={tick=1}] ~ ~ ~ summon minecart -35 79 183 rider_6
execute @s[scores={tick=1}] ~ ~ ~ summon minecart -34 79 183 rider_6
execute @s[scores={tick=1}] ~ ~ ~ summon minecart -33 79 183 rider_4
execute @s[scores={tick=1}] ~ ~ ~ summon minecart -32 79 183 rider_4
execute @s[scores={tick=1}] ~ ~ ~ tag @e[type=rwm:diner_zombie] add rider
execute @s[scores={tick=1}] ~ ~ ~ tag @e[type=rwm:diner_skeleton] add rider
execute @s[scores={tick=1}] ~ ~ ~ tag @e[type=rwm:diner_creeper] add rider

execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @e[type=minecart] var1 0

execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code