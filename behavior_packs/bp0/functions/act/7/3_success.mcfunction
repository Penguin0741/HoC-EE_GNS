
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100}] ~ ~ ~ fill -138 83 69 -138 83 62 air
execute @s[scores={tick=100}] ~ ~ ~ setblock -128 73 57 minecraft:stone
execute @s[scores={tick=100}] ~ ~ ~ setblock -128 74 57 redstone_torch
execute @s[scores={tick=100}] ~ ~ ~ summon rwm:utility -128 76 49
execute @s[scores={tick=100}] ~ ~ ~ tag @e[type=rwm:utility,tag=!game] add target
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:enderman_butler] add_goto
execute @s[scores={tick=100}] ~ ~ ~ fill -128 80 49 -128 81 49 air
execute @s[scores={tick=30}] ~ ~ ~ tp @e[type=rwm:enderman_butler] -128 76 49
execute @s[scores={tick=..30}] ~ ~ ~ effect @e[x=-128,y=76,z=49,dx=0,dy=5,dz=0] levitation 1 10 true
execute @s[scores={tick=10}] ~ ~ ~ fill -128 80 49 -128 81 49 gold_block
execute @s[scores={tick=10}] ~ ~ ~ effect @e[type=rwm:enderman_butler] clear
execute @s[scores={tick=10}] ~ ~ ~ event entity @e[tag=target] despawn
execute @s[scores={tick=10}] ~ ~ ~ function act/7/4

execute @e[x=-128,y=76,z=56,dx=0,dy=1,dz=2] ~ ~ ~ tp @s ~ 76.1 ~-0.2
