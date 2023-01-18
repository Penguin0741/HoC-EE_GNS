
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound mob.villager.no @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:clay_golem] ~ ~ ~ particle rwm:barrier ~ ~1 ~
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:clay_golem] ~ ~ ~ particle rwm:barrier ~ ~2 ~
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:clay_golem] -57 75 128
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var1 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var2 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var3 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var4 0
execute @s[scores={tick=1}] ~ ~ ~ setblock -60 74 131 redstone_block
execute @s[scores={tick=1}] ~ ~ ~ setblock -60 74 133 redstone_block
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
