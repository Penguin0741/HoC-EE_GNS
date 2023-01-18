
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 220

execute @s[scores={tick=220}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=220}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=220}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=220}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1

execute @s[scores={tick=190}] ~ ~ ~ setblock -57 73 135 redstone_torch
execute @s[scores={tick=190}] ~ ~ ~ summon rwm:utility -57 75 136
execute @s[scores={tick=190}] ~ ~ ~ tag @e[type=rwm:utility,tag=!game] add target
execute @s[scores={tick=190}] ~ ~ ~ event entity @e[type=rwm:clay_golem] add_goto
execute @s[scores={tick=150}] ~ ~ ~ setblock -57 73 135 air
execute @s[scores={tick=130}] ~ ~ ~ event entity @e[type=rwm:clay_golem] skin_2
execute @s[scores={tick=110}] ~ ~ ~ tp @e[tag=target] -52 74 136
execute @s[scores={tick=110}] ~ ~ ~ setblock -56 73 136 redstone_torch
execute @s[scores={tick=70}] ~ ~ ~ setblock -56 73 136 air
execute @s[scores={tick=40}] ~ ~ ~ event entity @e[tag=target] despawn
execute @s[scores={tick=40}] ~ ~ ~ tp @e[type=rwm:clay_golem] -52 74 136 180 0
execute @s[scores={tick=40}] ~ ~ ~ summon rwm:potion_steps -53 75 136
execute @s[scores={tick=40}] ~ ~ ~ particle rwm:sparkle_burst -53 75 136
execute @s[scores={tick=40}] ~ ~ ~ particle rwm:sparkle_burst -54 75 136
execute @s[scores={tick=40}] ~ ~ ~ playsound break.large_amethyst_bud @a ~ ~ ~ 1 1 1
execute @s[scores={tick=40}] ~ ~ ~ setblock -53 75 136 light_block 15

execute @s[scores={tick=70}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=70}] ~ ~ ~ clone -56 95 128 -56 96 128 -56 75 128
execute @s[scores={tick=60}] ~ ~ ~ clone -56 95 129 -56 96 128 -56 75 129
execute @s[scores={tick=50}] ~ ~ ~ clone -56 95 130 -56 96 128 -56 75 130
execute @s[scores={tick=40}] ~ ~ ~ clone -56 95 131 -56 96 128 -56 75 131
execute @s[scores={tick=30}] ~ ~ ~ clone -56 95 132 -56 96 128 -56 75 132
execute @s[scores={tick=20}] ~ ~ ~ clone -56 95 133 -56 96 128 -56 75 133
execute @s[scores={tick=10}] ~ ~ ~ clone -56 95 134 -56 96 128 -56 75 134

execute @s[scores={tick=10}] ~ ~ ~ function act/4/3
