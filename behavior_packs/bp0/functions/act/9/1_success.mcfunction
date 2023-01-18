
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:cursor] despawn
execute @s[scores={tick=80}] ~ ~ ~ fill -108 77 119 -108 80 117 air
execute @s[scores={tick=80}] ~ ~ ~ playsound tile.piston.in @a ~ ~ ~ 1 1.5 1
execute @s[scores={tick=80}] ~ ~ ~ function act/9/2
