
scoreboard players set @a address 70300
scoreboard players set @a tick 0
scoreboard players set @a hint 0
scoreboard players set @a var1 1
scoreboard players set @a var2 1
scoreboard players set @a var3 1
scoreboard players set @a var4 0
scoreboard players set @a var5 0
scoreboard players set @a var6 0
scoreboard players set @a var7 0
scoreboard players set @a var8 0
scoreboard players set @a queue_delay 10
function url
tag @s remove debug_run

tp @e[type=rwm:enderman_butler] -128 76 73 180 0
event entity @e[type=rwm:enderman_butler] remove_goto
event entity @e[type=rwm:enderman_butler] arm_pose_0

#event entity @e[tag=target] despawn
#summon rwm:utility -128 76 73
#tag @e[type=rwm:utility,tag=!game] add target