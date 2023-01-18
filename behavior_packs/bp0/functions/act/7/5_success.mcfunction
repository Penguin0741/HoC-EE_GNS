
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=60}] ~ ~ ~ fill -134 82 49 -134 84 50 air
execute @s[scores={tick=40}] ~ ~ ~ fill -134 82 49 -134 84 50 air
execute @s[scores={tick=20}] ~ ~ ~ fill -134 82 49 -134 84 50 air
execute @s[scores={tick=60}] ~ ~ ~ structure load "room7:simonz" -134 81 49
execute @s[scores={tick=40}] ~ ~ ~ structure load "room7:simonz" -134 80 49
execute @s[scores={tick=20}] ~ ~ ~ structure load "room7:simonz" -134 79 49
execute @s[scores={tick=60}] ~ ~ ~ fill -122 82 49 -122 84 50 air
execute @s[scores={tick=40}] ~ ~ ~ fill -122 82 49 -122 84 50 air
execute @s[scores={tick=20}] ~ ~ ~ fill -122 82 49 -122 84 50 air
execute @s[scores={tick=60}] ~ ~ ~ structure load "room7:simonz" -122 81 49
execute @s[scores={tick=40}] ~ ~ ~ structure load "room7:simonz" -122 80 49
execute @s[scores={tick=20}] ~ ~ ~ structure load "room7:simonz" -122 79 49
execute @s[scores={tick=60}] ~ ~ ~ fill -131 82 44 -130 84 44 air
execute @s[scores={tick=40}] ~ ~ ~ fill -131 82 44 -130 84 44 air
execute @s[scores={tick=20}] ~ ~ ~ fill -131 82 44 -130 84 44 air
execute @s[scores={tick=60}] ~ ~ ~ structure load "room7:simonx" -131 81 44
execute @s[scores={tick=40}] ~ ~ ~ structure load "room7:simonx" -131 80 44
execute @s[scores={tick=20}] ~ ~ ~ structure load "room7:simonx" -131 79 44
execute @s[scores={tick=60}] ~ ~ ~ fill -126 82 44 -125 84 44 air
execute @s[scores={tick=40}] ~ ~ ~ fill -126 82 44 -125 84 44 air
execute @s[scores={tick=20}] ~ ~ ~ fill -126 82 44 -125 84 44 air
execute @s[scores={tick=60}] ~ ~ ~ structure load "room7:simonx" -126 81 44
execute @s[scores={tick=40}] ~ ~ ~ structure load "room7:simonx" -126 80 44
execute @s[scores={tick=20}] ~ ~ ~ structure load "room7:simonx" -126 79 44
execute @s[scores={tick=20}] ~ ~ ~ function act/7/6
