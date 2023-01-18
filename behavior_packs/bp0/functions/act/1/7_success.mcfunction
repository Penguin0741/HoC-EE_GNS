
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.room_cleared","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.room_1","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100}] ~ ~ ~ fill 13 74 68 13 75 68 redstone_block
execute @s[scores={tick=100}] ~ ~ ~ fill 23 74 68 23 75 68 redstone_block
execute @s[scores={tick=100}] ~ ~ ~ fill 11 74 68 11 75 68 redstone_block
execute @s[scores={tick=100}] ~ ~ ~ fill 21 74 68 21 75 68 redstone_block
execute @s[scores={tick=100}] ~ ~ ~ function act/1/8