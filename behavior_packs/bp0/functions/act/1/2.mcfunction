
scoreboard players set @a address 10200
scoreboard players set @a tick 0
scoreboard players set @a hint 1200
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

# Place down levers
setblock 41 74 85 lever 4
setblock 37 73 81 lever 11
setblock 29 74 81 lever 3

# Open mirror
fill 26 72 82 26 74 86 air
fill 24 72 82 24 74 86 light_block 15