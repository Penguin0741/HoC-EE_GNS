
scoreboard players set @a address 00300
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

# Remove barriers
fill -13 69 -263 -11 67 -261 air

# Remove blackboard
fill -11 67 -257 -13 68 -257 air

execute @a[tag=main_player] ~ ~ ~ playsound mob.endermen.portal @s ~ ~ ~ 0.75 2