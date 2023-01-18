
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 70

execute @s[scores={tick=60}] ~ ~ ~ setblock -57 74 127 redstone_torch
execute @s[scores={tick=60}] ~ ~ ~ tp @e[tag=target] -57 75 128
execute @s[scores={tick=10}] ~ ~ ~ setblock -57 74 127 air

execute @s[scores={tick=70}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=70}] ~ ~ ~ fill -56 75 128 -56 76 128 glass
execute @s[scores={tick=60}] ~ ~ ~ fill -56 75 129 -56 76 129 glass
execute @s[scores={tick=50}] ~ ~ ~ fill -56 75 130 -56 76 130 glass
execute @s[scores={tick=40}] ~ ~ ~ fill -56 75 131 -56 76 131 glass
execute @s[scores={tick=30}] ~ ~ ~ fill -56 75 132 -56 76 132 glass
execute @s[scores={tick=20}] ~ ~ ~ fill -56 75 133 -56 76 133 glass
execute @s[scores={tick=10}] ~ ~ ~ fill -56 75 134 -56 76 134 glass
execute @s[scores={tick=10}] ~ ~ ~ event entity @e[tag=target] despawn
execute @s[scores={tick=10}] ~ ~ ~ tp @e[type=rwm:clay_golem] -57 75 128 0 0
execute @s[scores={tick=10}] ~ ~ ~ event entity @e[type=rwm:clay_golem] show_name
execute @s[scores={tick=10}] ~ ~ ~ scoreboard players remove @s address 3
