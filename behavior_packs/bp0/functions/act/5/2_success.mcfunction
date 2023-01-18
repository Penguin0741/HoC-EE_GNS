
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 140

execute @s[scores={tick=140}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=140}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=140}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=140}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100}] ~ ~ ~ structure load "room5:wallpond3" -58 70 42
execute @s[scores={tick=90}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=90}] ~ ~ ~ structure load "room5:channelwater1" -55 70 47
execute @s[scores={tick=80}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 1 1
execute @s[scores={tick=80}] ~ ~ ~ structure load "room5:channelwater2" -55 70 47
execute @s[scores={tick=80}] ~ ~ ~ function act/5/3
