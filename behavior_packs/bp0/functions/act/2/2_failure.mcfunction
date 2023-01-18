
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 140

execute @s[scores={tick=140}] ~ ~ ~ structure load "room2:chompy1" 4 70 123
execute @s[scores={tick=130}] ~ ~ ~ structure load "room2:chompy2" 4 70 123
execute @s[scores={tick=120}] ~ ~ ~ structure load "room2:chompy3" 4 70 123
execute @s[scores={tick=110}] ~ ~ ~ playsound random.eat @a ~ ~ ~ 1 0.5 1
execute @s[scores={tick=110}] ~ ~ ~ structure load "room2:chompy2" 4 70 123
execute @s[scores={tick=110,var2=1..}] ~ ~ ~ particle rwm:eat_apple 9 72 127
execute @s[scores={tick=110,var3=1..}] ~ ~ ~ particle rwm:eat_salmon 9 72 127
execute @s[scores={tick=110,var4=1..}] ~ ~ ~ particle rwm:eat_mushroom_stew 9 72 127
execute @s[scores={tick=100}] ~ ~ ~ structure load "room2:chompy1" 4 70 123
execute @s[scores={tick=90}] ~ ~ ~ structure load "room2:chompy2" 4 70 123
execute @s[scores={tick=80}] ~ ~ ~ playsound random.eat @a ~ ~ ~ 1 0.5 1
execute @s[scores={tick=80}] ~ ~ ~ structure load "room2:chompy3" 4 70 123
execute @s[scores={tick=80,var2=1..}] ~ ~ ~ particle rwm:eat_apple 9 72 127
execute @s[scores={tick=80,var3=1..}] ~ ~ ~ particle rwm:eat_salmon 9 72 127
execute @s[scores={tick=80,var4=1..}] ~ ~ ~ particle rwm:eat_mushroom_stew 9 72 127
execute @s[scores={tick=60}] ~ ~ ~ playsound mob.villager.no @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:barrier 8 76 127
execute @s[scores={tick=1}] ~ ~ ~ structure load "room2:chompy0" 4 70 123
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var1 0
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code
