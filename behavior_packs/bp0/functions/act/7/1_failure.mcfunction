
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60,var3=0}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60,var3=0}] ~ ~ ~ particle rwm:barrier -115 82 58
execute @s[scores={tick=1,var3=0}] ~ ~ ~ playsound mob.endermen.portal @a ~ ~ ~ 1 1 1

execute @s[scores={tick=50,var3=1}] ~ ~ ~ event entity @e[type=rwm:enderman_butler] arm_pose_0
execute @s[scores={tick=50,var3=1}] ~ ~ ~ tp @e[type=rwm:enderman_butler] -104 81 59
execute @s[scores={tick=50,var3=1}] ~ ~ ~ playsound mob.endermen.hit @a ~ ~ ~ 1 1 1
execute @s[scores={tick=50,var3=1}] ~ ~ ~ playsound mob.endermen.portal @a ~ ~ ~ 1 1 1
execute @s[scores={tick=50,var3=1}] ~ ~ ~ particle rwm:barrier -104 84 59

execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var1 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var2 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var3 0
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:enderman_butler] -104 81 59
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:enderman_butler] arm_pose_1

execute @s[scores={tick=1}] ~ ~ ~ setblock -115 81 58 lever 3
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

execute @s[scores={var2=0,second=0}] ~ ~ ~ particle rwm:cast_orb -113 81.2 59