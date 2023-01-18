
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=100}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:cursor] despawn
execute @s[scores={tick=80}] ~ ~ ~ playsound crossbow.loading.start @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ playsound crossbow.loading.middle @a ~ ~ ~ 1 1 1
execute @s[scores={tick=40}] ~ ~ ~ playsound crossbow.loading.end @a ~ ~ ~ 1 1 1
execute @s[scores={tick=80,room_variant=1}] ~ ~ ~ structure load "room9:curtain1_2" -126 76 116
execute @s[scores={tick=70,room_variant=1}] ~ ~ ~ structure load "room9:curtain1_3" -126 76 116
execute @s[scores={tick=60,room_variant=1}] ~ ~ ~ structure load "room9:curtain1_4" -126 76 116
execute @s[scores={tick=50,room_variant=1}] ~ ~ ~ structure load "room9:curtain1_5" -126 76 116
execute @s[scores={tick=40,room_variant=1}] ~ ~ ~ structure load "room9:curtain1_6" -126 76 116
execute @s[scores={tick=80,room_variant=2}] ~ ~ ~ structure load "room9:curtain2_2" -125 75 115
execute @s[scores={tick=60,room_variant=2}] ~ ~ ~ structure load "room9:curtain2_3" -125 75 115
execute @s[scores={tick=40,room_variant=2}] ~ ~ ~ structure load "room9:curtain2_4" -125 75 115
execute @s[scores={tick=80,room_variant=3}] ~ ~ ~ structure load "room9:curtain3_2" -125 75 117
execute @s[scores={tick=60,room_variant=3}] ~ ~ ~ structure load "room9:curtain3_3" -125 75 117
execute @s[scores={tick=40,room_variant=3}] ~ ~ ~ structure load "room9:curtain3_4" -125 75 117
execute @s[scores={tick=20}] ~ ~ ~ setblock -124 74 122 sticky_piston 1
execute @s[scores={tick=18}] ~ ~ ~ setblock -124 73 122 redstone_block
execute @s[scores={tick=10}] ~ ~ ~ setblock -124 77 122 stone_button 1
execute @s[scores={tick=10}] ~ ~ ~ function act/9/4
