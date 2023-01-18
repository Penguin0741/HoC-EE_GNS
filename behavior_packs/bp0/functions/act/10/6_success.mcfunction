
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 102

execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ playsound beacon.ambient @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ event entity @c look_default
execute @s[scores={tick=61..,second=0}] ~ ~ ~ particle rwm:charging_4 25 72 32
execute @s[scores={tick=61..,second=5}] ~ ~ ~ particle rwm:charging_3 25 72 32
execute @s[scores={tick=61..,second=10}] ~ ~ ~ particle rwm:charging_2 25 72 32
execute @s[scores={tick=61..,second=15}] ~ ~ ~ particle rwm:charging_1 25 72 32
execute @s[scores={tick=1..60}] ~ ~ ~ particle rwm:charging_4 25 72 32
execute @s[scores={tick=1..60}] ~ ~ ~ particle rwm:charging_3 25 72 32
execute @s[scores={tick=1..60}] ~ ~ ~ particle rwm:charging_2 25 72 32
execute @s[scores={tick=1..60}] ~ ~ ~ particle rwm:charging_1 25 72 32
execute @s[scores={tick=1}] ~ ~ ~ function act/10/7

