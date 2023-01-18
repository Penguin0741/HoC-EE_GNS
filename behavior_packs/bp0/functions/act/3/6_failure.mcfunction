
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60,var1=4,var2=1}] ~ ~ ~ tag @e[type=rwm:king] add correct
execute @s[scores={tick=60,var3=5,var4=4}] ~ ~ ~ tag @e[type=rwm:queen] add correct
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:king,tag=!correct] ~ ~ ~ playsound mob.creeper.say @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:king,tag=!correct] ~ ~ ~ particle rwm:barrier ~ ~2 ~
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:queen,tag=!correct] ~ ~ ~ playsound mob.ghast.death @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:queen,tag=!correct] ~ ~ ~ particle rwm:barrier ~ ~2 ~
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:king,tag=correct] ~ ~ ~ playsound random.orb @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:king,tag=correct] ~ ~ ~ particle rwm:checkmark ~ ~2 ~
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:queen,tag=correct] ~ ~ ~ playsound random.orb @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ execute @e[type=rwm:queen,tag=correct] ~ ~ ~ particle rwm:checkmark ~ ~2 ~
execute @s[scores={tick=1}] ~ ~ ~ tag @e[type=rwm:king] remove correct
execute @s[scores={tick=1}] ~ ~ ~ tag @e[type=rwm:queen] remove correct
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var1 5
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var2 5
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var3 1
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var4 5
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var5 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var6 -1
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:king] 31 70 170
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:queen] 27 70 170
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

execute @s[scores={path=1,second=0,hint=1}] ~ ~ ~ particle rwm:cake_icon 30 70 166
execute @s[scores={path=1,second=0,hint=1}] ~ ~ ~ particle rwm:cake_icon 31 70 169
scoreboard players add @s[scores={hint=1}] hint 1

particle rwm:sparkle 17 72 162
particle rwm:sparkle 39 72 167 