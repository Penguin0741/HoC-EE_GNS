
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ playsound block.stonecutter.use @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60,room_variant=1}] ~ ~ ~ particle rwm:pipe_smoke -41 78 133
execute @s[scores={tick=60,room_variant=2}] ~ ~ ~ particle rwm:pipe_smoke -39 79 133
execute @s[scores={tick=60,room_variant=3}] ~ ~ ~ particle rwm:pipe_smoke -39 78 134
execute @s[scores={tick=30}] ~ ~ ~ playsound block.stonecutter.use @a ~ ~ ~ 1 1 1
execute @s[scores={tick=30,room_variant=1}] ~ ~ ~ particle rwm:pipe_smoke -45 78 133
execute @s[scores={tick=30,room_variant=2}] ~ ~ ~ particle rwm:pipe_smoke -41 80 135
execute @s[scores={tick=30,room_variant=3}] ~ ~ ~ particle rwm:pipe_smoke -46 78 134
execute @s[scores={tick=10}] ~ ~ ~ function act/4/5

particle rwm:cauldron_smoke -35 72 122
particle rwm:cauldron_smoke -35 72 126
particle rwm:cauldron_smoke -35 72 130