
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 140

execute @s[scores={tick=140}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=140}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=140}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=140}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100}] ~ ~ ~ execute @s[tag=trophy_boss] ~ ~ ~ scoreboard players set @s tick 20
execute @s[scores={tick=100}] ~ ~ ~ execute @s[tag=!trophy_boss] ~ ~ ~ function trophy/unlock_boss
execute @s[scores={tick=100}] ~ ~ ~ execute @s[tag=trophy_green,tag=trophy_yellow,tag=trophy_red,tag=!trophy_emerald] ~ ~ ~ function trophy/unlock_emerald
execute @s[scores={tick=1}] ~ ~ ~ function act/11/8
