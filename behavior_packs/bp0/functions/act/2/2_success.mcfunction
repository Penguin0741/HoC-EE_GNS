
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 160

execute @s[scores={tick=160}] ~ ~ ~ structure load "room2:chompy1" 4 70 123
execute @s[scores={tick=150}] ~ ~ ~ structure load "room2:chompy2" 4 70 123
execute @s[scores={tick=140}] ~ ~ ~ structure load "room2:chompy3" 4 70 123
execute @s[scores={tick=130}] ~ ~ ~ playsound random.eat @a ~ ~ ~ 1 0.5 1
execute @s[scores={tick=130,var2=1..}] ~ ~ ~ particle rwm:eat_apple 9 72 127
execute @s[scores={tick=130,var3=1..}] ~ ~ ~ particle rwm:eat_salmon 9 72 127
execute @s[scores={tick=130,var4=1..}] ~ ~ ~ particle rwm:eat_mushroom_stew 9 72 127
execute @s[scores={tick=130}] ~ ~ ~ structure load "room2:chompy2" 4 70 123
execute @s[scores={tick=120}] ~ ~ ~ structure load "room2:chompy1" 4 70 123
execute @s[scores={tick=110}] ~ ~ ~ structure load "room2:chompy2" 4 70 123
execute @s[scores={tick=100}] ~ ~ ~ playsound random.eat @a ~ ~ ~ 1 0.5 1
execute @s[scores={tick=100}] ~ ~ ~ structure load "room2:chompy3" 4 70 123
execute @s[scores={tick=100,var2=1..}] ~ ~ ~ particle rwm:eat_apple 9 72 127
execute @s[scores={tick=100,var3=1..}] ~ ~ ~ particle rwm:eat_salmon 9 72 127
execute @s[scores={tick=100,var4=1..}] ~ ~ ~ particle rwm:eat_mushroom_stew 9 72 127
execute @s[scores={tick=60}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=60}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=60}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=60}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ structure load "room2:chompy4" 4 70 123
execute @s[scores={tick=50}] ~ ~ ~ structure load "room2:chompy5" 4 70 123
execute @s[scores={tick=50}] ~ ~ ~ function act/2/3