
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 150

execute @s[scores={tick=150}] ~ ~ ~ event entity @e[type=rwm:zombie_minion] add_goto
execute @s[scores={tick=120}] ~ ~ ~ event entity @e[tag=target] despawn
execute @s[scores={tick=120}] ~ ~ ~ playsound random.click @a ~ ~ ~ 1 0.6 1
execute @s[scores={tick=120}] ~ ~ ~ setblock -115 79 190 warped_button 10
execute @s[scores={tick=110}] ~ ~ ~ playsound random.click @a ~ ~ ~ 1 0.5 1
execute @s[scores={tick=110}] ~ ~ ~ setblock -115 79 190 warped_button 2
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:cursor] despawn
execute @s[scores={tick=60}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ structure load "room8:stairs1" -121 75 189
execute @s[scores={tick=50}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1 1
execute @s[scores={tick=50}] ~ ~ ~ structure load "room8:stairs2" -121 75 189
execute @s[scores={tick=40}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1 1
execute @s[scores={tick=40}] ~ ~ ~ structure load "room8:stairs3" -121 75 189
execute @s[scores={tick=30}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1 1
execute @s[scores={tick=30}] ~ ~ ~ structure load "room8:stairs4" -121 75 189
execute @s[scores={tick=30}] ~ ~ ~ function act/8/6
