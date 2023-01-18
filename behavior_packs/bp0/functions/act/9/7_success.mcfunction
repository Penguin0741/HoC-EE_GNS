
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 150

execute @s[scores={tick=150}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=150}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={tick=150}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.puzzle_success","with": ["\n"]}]}
execute @s[scores={tick=150}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=150}] ~ ~ ~ detect -143 73 119 lit_redstone_lamp 0 particle rwm:checkmark -143 74 119
execute @s[scores={tick=150}] ~ ~ ~ detect -143 73 121 lit_redstone_lamp 0 particle rwm:checkmark -143 74 121
execute @s[scores={tick=150}] ~ ~ ~ detect -143 73 123 lit_redstone_lamp 0 particle rwm:checkmark -143 74 123
execute @s[scores={tick=150}] ~ ~ ~ detect -143 73 125 lit_redstone_lamp 0 particle rwm:checkmark -143 74 125
execute @s[scores={tick=110}] ~ ~ ~ event entity @e[type=rwm:laser] despawn
execute @s[scores={tick=110}] ~ ~ ~ setblock -144 72 119 redstone_block
execute @s[scores={tick=110}] ~ ~ ~ setblock -144 72 123 redstone_block
execute @s[scores={tick=110}] ~ ~ ~ setblock -144 72 125 redstone_block
execute @s[scores={tick=110}] ~ ~ ~ setblock -132 70 119 air
execute @s[scores={tick=110}] ~ ~ ~ setblock -132 70 123 air
execute @s[scores={tick=110}] ~ ~ ~ setblock -132 70 125 air
execute @s[scores={tick=110}] ~ ~ ~ setblock -145 72 119 air
execute @s[scores={tick=110}] ~ ~ ~ setblock -145 72 123 air
execute @s[scores={tick=110}] ~ ~ ~ setblock -145 72 125 air
execute @s[scores={tick=90}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=90}] ~ ~ ~ structure load "room9:laserlidx_9" -144 72 117
execute @s[scores={tick=90}] ~ ~ ~ fill -144 72 119 -144 72 125 redstone_block
execute @s[scores={tick=80}] ~ ~ ~ structure load "room9:laserlidx_8" -144 72 117
execute @s[scores={tick=70}] ~ ~ ~ structure load "room9:laserlidx_7" -144 72 117
execute @s[scores={tick=60,room_variant=1}] ~ ~ ~ structure load "room9:laserlid1_6" -144 72 117
execute @s[scores={tick=50,room_variant=1}] ~ ~ ~ structure load "room9:laserlid1_5" -144 72 117
execute @s[scores={tick=40,room_variant=1}] ~ ~ ~ structure load "room9:laserlid1_4" -144 72 117
execute @s[scores={tick=30,room_variant=1}] ~ ~ ~ structure load "room9:laserlid1_3" -144 72 117
execute @s[scores={tick=20,room_variant=1}] ~ ~ ~ structure load "room9:laserlid1_2" -144 72 117
execute @s[scores={tick=10,room_variant=1}] ~ ~ ~ structure load "room9:laserlid1_1" -144 72 117
execute @s[scores={tick=60,room_variant=2}] ~ ~ ~ structure load "room9:laserlid2_6" -144 72 117
execute @s[scores={tick=50,room_variant=2}] ~ ~ ~ structure load "room9:laserlid2_5" -144 72 117
execute @s[scores={tick=40,room_variant=2}] ~ ~ ~ structure load "room9:laserlid2_4" -144 72 117
execute @s[scores={tick=30,room_variant=2}] ~ ~ ~ structure load "room9:laserlid2_3" -144 72 117
execute @s[scores={tick=20,room_variant=2}] ~ ~ ~ structure load "room9:laserlid2_2" -144 72 117
execute @s[scores={tick=10,room_variant=2}] ~ ~ ~ structure load "room9:laserlid2_1" -144 72 117
execute @s[scores={tick=60,room_variant=3}] ~ ~ ~ structure load "room9:laserlid3_6" -144 72 117
execute @s[scores={tick=50,room_variant=3}] ~ ~ ~ structure load "room9:laserlid3_5" -144 72 117
execute @s[scores={tick=40,room_variant=3}] ~ ~ ~ structure load "room9:laserlid3_4" -144 72 117
execute @s[scores={tick=30,room_variant=3}] ~ ~ ~ structure load "room9:laserlid3_3" -144 72 117
execute @s[scores={tick=20,room_variant=3}] ~ ~ ~ structure load "room9:laserlid3_2" -144 72 117
execute @s[scores={tick=10,room_variant=3}] ~ ~ ~ structure load "room9:laserlid3_1" -144 72 117
execute @s[scores={tick=10}] ~ ~ ~ fill -126 76 126 -126 76 118 air
execute @s[scores={tick=10}] ~ ~ ~ function act/9/8
