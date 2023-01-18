
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=80}] ~ ~ ~ particle rwm:host_poof -12 67 -212
execute @s[scores={tick=80}] ~ ~ ~ playsound mob.shulker.shoot @a ~ ~ ~ 1 1 1
execute @s[scores={tick=80}] ~ ~ ~ tp @e[type=rwm:host] -12 67 -210
execute @s[scores={tick=80}] ~ ~ ~ scoreboard players remove @s address 3
