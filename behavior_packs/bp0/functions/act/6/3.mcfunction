
scoreboard players set @a address 60300
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

structure load "room6:weight0" -22 75 164
particle rwm:sparkle_burst -22 75 164

summon rwm:weight_diagram -24 76 159
particle rwm:sparkle_burst -24 76 159

playsound step.amethyst_block @a ~ ~ ~ 1 1 1