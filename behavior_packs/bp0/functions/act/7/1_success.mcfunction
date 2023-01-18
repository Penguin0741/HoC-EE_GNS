
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ playsound block.barrel.close @a ~ ~ ~ 1 0.5 1
execute @s[scores={tick=60}] ~ ~ ~ structure load "room7:drawbridge2" -113 81 63
execute @s[scores={tick=40}] ~ ~ ~ structure load "room7:drawbridge3" -113 81 63
execute @s[scores={tick=20}] ~ ~ ~ structure load "room7:drawbridge4" -113 81 63
execute @s[scores={tick=1}] ~ ~ ~ function act/7/2
