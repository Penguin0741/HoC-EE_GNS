
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1

execute @s[scores={tick=60}] ~ ~ ~ tp @c 0 70 0
execute @s[scores={tick=60}] ~ ~ ~ summon rwm:clay_golem -57 76 124
execute @s[scores={tick=60}] ~ ~ ~ dialogue change @e[type=rwm:clay_golem] npc.clay_golem.0
execute @s[scores={tick=60}] ~ ~ ~ setblock -57 74 125 redstone_torch
execute @s[scores={tick=60}] ~ ~ ~ summon rwm:utility -57 76 126
execute @s[scores={tick=60}] ~ ~ ~ tag @e[type=rwm:utility,tag=!game] add target
execute @s[scores={tick=50}] ~ ~ ~ event entity @e[type=rwm:clay_golem] add_goto
execute @s[scores={tick=20}] ~ ~ ~ event entity @e[type=rwm:clay_golem] skin_1
execute @s[scores={tick=20}] ~ ~ ~ setblock -57 74 125 air

execute @s[scores={tick=60}] ~ ~ ~ clone -56 94 120 -56 97 120 -56 74 120
execute @s[scores={tick=50}] ~ ~ ~ clone -56 94 121 -56 97 121 -56 74 121
execute @s[scores={tick=40}] ~ ~ ~ clone -56 94 122 -56 97 122 -56 74 122
execute @s[scores={tick=30}] ~ ~ ~ clone -56 94 123 -56 97 123 -56 74 123
execute @s[scores={tick=20}] ~ ~ ~ clone -56 94 124 -56 97 124 -56 74 124

execute @s[scores={tick=20}] ~ ~ ~ tp @c 0 64 0
execute @s[scores={tick=20}] ~ ~ ~ function act/4/2
