
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=80}] ~ ~ ~ playsound mob.irongolem.hit @a ~ ~ ~ 1 1.5 1
execute @s[scores={tick=80}] ~ ~ ~ execute @e[tag=agent5] ~ ~ ~ particle rwm:sparkle_burst ~ ~ ~
execute @s[scores={tick=80}] ~ ~ ~ tag @e[tag=agent5] add stunned
execute @s[scores={tick=80}] ~ ~ ~ event entity @e[type=rwm:time_agent] lookat_remove
execute @s[scores={tick=80}] ~ ~ ~ setblock 225 45 -588 air
execute @s[scores={tick=80}] ~ ~ ~ playsound respawn_anchor.deplete @a ~ ~ ~ 1 1 1
execute @s[scores={tick=80}] ~ ~ ~ event entity @e[type=rwm:time_onion] explode
execute @s[scores={tick=1}] ~ ~ ~ function act/11/7
