
scoreboard players set @a address 70600
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

execute @s[scores={room_variant=1}] ~ ~ ~ fill -140 83 50 -141 86 48 air
execute @s[scores={room_variant=2}] ~ ~ ~ fill -140 83 50 -141 86 48 air
execute @s[scores={room_variant=3}] ~ ~ ~ fill -129 85 39 -127 82 38 air