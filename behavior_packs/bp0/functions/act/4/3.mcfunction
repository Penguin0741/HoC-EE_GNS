
scoreboard players set @a address 40300
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

setblock -42 76 126 polished_blackstone_button 1

playsound tile.piston.out @a ~ ~ ~ 1 0.7 1
setblock -43 75 129 wood 13
setblock -43 76 129 wooden_button 1