
scoreboard players set @a address 30600
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
scoreboard players set @a queue_delay 20
function url
tag @s remove debug_run

event entity @e[type=rwm:cursor] despawn

fill 31 70 170 27 70 166 structure_void
fill 31 71 170 27 71 166 light_block 15

scoreboard players set @a var1 5
scoreboard players set @a var2 5
scoreboard players set @a var3 1
scoreboard players set @a var4 5
scoreboard players set @a var6 -1

event entity @e[type=rwm:king] arrows
event entity @e[type=rwm:queen] arrows