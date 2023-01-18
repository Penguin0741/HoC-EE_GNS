
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ playsound crossbow.quick_charge.middle @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100,var1=24..}] ~ ~ ~ structure load "room6:scale" -19 75 161
execute @s[scores={tick=80,var1=24..}] ~ ~ ~ structure load "room6:scale" -19 74 161
execute @s[scores={tick=60,var1=..22}] ~ ~ ~ particle rwm:medium_barrier -18 78 162
execute @s[scores={tick=60,var1=24..}] ~ ~ ~ particle rwm:medium_barrier -18 76 162
execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=1}] ~ ~ ~ fill -19 74 161 -17 75 163 air
execute @s[scores={tick=1}] ~ ~ ~ structure load "room6:scale" -19 76 161
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=sheep] despawn
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=chicken] despawn
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=cow] despawn
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var1 0
execute @s[scores={tick=1}] ~ ~ ~ function act/6/3_update_weight
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
