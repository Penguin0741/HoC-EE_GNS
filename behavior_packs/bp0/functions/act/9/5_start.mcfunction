
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 140

execute @s[scores={tick=140}] ~ ~ ~ setblock -124 77 122 air
execute @s[scores={tick=140}] ~ ~ ~ setblock -124 73 122 air
execute @s[scores={tick=100}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=100,room_variant=1}] ~ ~ ~ structure load "room9:laserlid1_2" -144 72 117
execute @s[scores={tick=90,room_variant=1}] ~ ~ ~ structure load "room9:laserlid1_3" -144 72 117
execute @s[scores={tick=80,room_variant=1}] ~ ~ ~ structure load "room9:laserlid1_4" -144 72 117
execute @s[scores={tick=70,room_variant=1}] ~ ~ ~ structure load "room9:laserlid1_5" -144 72 117
execute @s[scores={tick=60,room_variant=1}] ~ ~ ~ structure load "room9:laserlid1_6" -144 72 117
execute @s[scores={tick=100,room_variant=2}] ~ ~ ~ structure load "room9:laserlid2_2" -144 72 117
execute @s[scores={tick=90,room_variant=2}] ~ ~ ~ structure load "room9:laserlid2_3" -144 72 117
execute @s[scores={tick=80,room_variant=2}] ~ ~ ~ structure load "room9:laserlid2_4" -144 72 117
execute @s[scores={tick=70,room_variant=2}] ~ ~ ~ structure load "room9:laserlid2_5" -144 72 117
execute @s[scores={tick=60,room_variant=2}] ~ ~ ~ structure load "room9:laserlid2_6" -144 72 117
execute @s[scores={tick=100,room_variant=3}] ~ ~ ~ structure load "room9:laserlid3_2" -144 72 117
execute @s[scores={tick=90,room_variant=3}] ~ ~ ~ structure load "room9:laserlid3_3" -144 72 117
execute @s[scores={tick=80,room_variant=3}] ~ ~ ~ structure load "room9:laserlid3_4" -144 72 117
execute @s[scores={tick=70,room_variant=3}] ~ ~ ~ structure load "room9:laserlid3_5" -144 72 117
execute @s[scores={tick=60,room_variant=3}] ~ ~ ~ structure load "room9:laserlid3_6" -144 72 117
execute @s[scores={tick=50}] ~ ~ ~ structure load "room9:laserlidx_7" -144 72 117
execute @s[scores={tick=40}] ~ ~ ~ structure load "room9:laserlidx_8" -144 72 117
execute @s[scores={tick=30}] ~ ~ ~ structure load "room9:laserlidx_9" -144 72 117
execute @s[scores={tick=30}] ~ ~ ~ setblock -144 73 125 redstone_lamp
execute @s[scores={tick=30}] ~ ~ ~ setblock -144 73 123 redstone_lamp
execute @s[scores={tick=30}] ~ ~ ~ setblock -144 73 121 redstone_lamp
execute @s[scores={tick=30}] ~ ~ ~ setblock -144 73 119 redstone_lamp
execute @s[scores={tick=30}] ~ ~ ~ setblock -132 71 119 sticky_piston 1
execute @s[scores={tick=30}] ~ ~ ~ setblock -132 71 121 sticky_piston 1
execute @s[scores={tick=30}] ~ ~ ~ setblock -132 71 123 sticky_piston 1
execute @s[scores={tick=30}] ~ ~ ~ setblock -132 71 125 sticky_piston 1
execute @s[scores={tick=30}] ~ ~ ~ setblock -132 70 119 air
execute @s[scores={tick=30}] ~ ~ ~ setblock -132 70 121 redstone_block
execute @s[scores={tick=30}] ~ ~ ~ setblock -132 70 123 air
execute @s[scores={tick=30}] ~ ~ ~ setblock -132 70 125 air
execute @s[scores={tick=20}] ~ ~ ~ setblock -145 73 119 sticky_piston 4
execute @s[scores={tick=20}] ~ ~ ~ setblock -145 73 121 sticky_piston 4
execute @s[scores={tick=20}] ~ ~ ~ setblock -145 73 123 sticky_piston 4
execute @s[scores={tick=20}] ~ ~ ~ setblock -145 73 125 sticky_piston 4
execute @s[scores={tick=20}] ~ ~ ~ setblock -145 72 121 redstone_block
execute @s[scores={tick=10}] ~ ~ ~ setblock -134 73 117 air
execute @s[scores={tick=10}] ~ ~ ~ setblock -134 73 127 air
execute @s[scores={tick=10}] ~ ~ ~ structure load "room9:greenline" -134 73 118
execute @s[scores={tick=10}] -133 73 121 summon rwm:laser ~ ~ ~
execute @s[scores={tick=10}] -133 73 121 tag @e[type=rwm:laser,c=1] add laser1
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 3
