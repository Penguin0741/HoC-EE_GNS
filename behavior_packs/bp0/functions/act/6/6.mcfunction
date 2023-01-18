
scoreboard players set @a address 60600
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

execute @s[scores={room_variant=1}] ~ ~ ~ fill -58 80 187 -58 76 185 air
execute @s[scores={room_variant=1}] ~ ~ ~ setblock -57 77 186 air
execute @s[scores={room_variant=2}] ~ ~ ~ fill -63 77 183 -62 80 181 air
execute @s[scores={room_variant=3}] ~ ~ ~ fill -58 75 181 -57 78 179 air