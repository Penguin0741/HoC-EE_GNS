
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ playsound crossbow.quick_charge.middle @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ structure load "room6:scale" -19 75 161
execute @s[scores={tick=1}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=1}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=1}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=1}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=1}] ~ ~ ~ function act/6/4