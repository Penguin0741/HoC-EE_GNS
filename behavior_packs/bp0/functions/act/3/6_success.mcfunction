
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 140

execute @s[scores={tick=140}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=140}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.room_cleared","with": ["\n"]}]}
execute @s[scores={tick=140}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.room_3","with": ["\n"]}]}
execute @s[scores={tick=140}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=140}] ~ ~ ~ execute @e[type=rwm:king,tag=correct] ~ ~ ~ particle rwm:checkmark ~ ~2 ~
execute @s[scores={tick=140}] ~ ~ ~ execute @e[type=rwm:queen,tag=correct] ~ ~ ~ particle rwm:checkmark ~ ~2 ~
execute @s[scores={tick=100,path=1},tag=!trophy_green] ~ ~ ~ function trophy/unlock_green
execute @s[scores={tick=100,path=2},tag=!trophy_yellow] ~ ~ ~ function trophy/unlock_yellow
execute @s[scores={tick=100,path=3},tag=!trophy_red] ~ ~ ~ function trophy/unlock_red
execute @s[scores={tick=1}] ~ ~ ~ function act/3/7