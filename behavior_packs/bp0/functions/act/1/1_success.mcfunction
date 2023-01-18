
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=80}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=50}] ~ ~ ~ fill 36 75 90 40 75 90 planks 5
execute @s[scores={tick=60}] ~ ~ ~ fill 36 74 90 40 74 90 planks 5
execute @s[scores={tick=70}] ~ ~ ~ fill 36 73 90 40 73 90 planks 5
execute @s[scores={tick=80}] ~ ~ ~ fill 36 72 90 40 72 90 planks 5
execute @s[scores={tick=70}] ~ ~ ~ event entity @e[type=rwm:painting] slide_up
execute @s[scores={tick=40}] ~ ~ ~ tp @c 0 64 0
execute @s[scores={tick=40}] ~ ~ ~ function act/1/2
