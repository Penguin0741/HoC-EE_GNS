
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:big_barrier 225 8 -588
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var1 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var2 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var3 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var4 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var5 0
execute @s[scores={tick=1}] ~ ~ ~ structure load "boss:ring_outer" 201 8 -612 0_degrees
execute @s[scores={tick=1}] ~ ~ ~ structure load "boss:ring_middle" 207 7 -606 0_degrees
execute @s[scores={tick=1}] ~ ~ ~ structure load "boss:ring_inner" 213 6 -600 0_degrees
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
