
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 60

execute @s[scores={tick=60}] ~ ~ ~ particle rwm:big_barrier -53 74 43
execute @s[scores={tick=60}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={tick=1}] ~ ~ ~ fill -56 72 44 -50 79 42 stone 0
execute @s[scores={tick=1}] ~ ~ ~ fill -56 72 44 -50 79 42 air 0
execute @s[scores={tick=1}] ~ ~ ~ structure load "room5:crackedwall" -56 72 41
execute @s[scores={tick=1}] ~ ~ ~ setblock -55 77 41 rwm:extra_cracked_bricks
execute @s[scores={tick=1}] ~ ~ ~ setblock -51 77 41 rwm:extra_cracked_bricks
execute @s[scores={tick=1}] ~ ~ ~ setblock -52 75 41 rwm:extra_cracked_bricks
execute @s[scores={tick=1}] ~ ~ ~ setblock -54 73 41 rwm:extra_cracked_bricks
execute @s[scores={tick=1}] ~ ~ ~ fill -51 80 40 -55 80 40 air
execute @s[scores={tick=1}] ~ ~ ~ setblock -53 80 40 redstone_block
execute @s[scores={tick=1}] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[scores={tick=1}] ~ ~ ~ tp @e[type=rwm:cursor] -55 108 41
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 2
execute @s[scores={tick=1}] ~ ~ ~ function api/stop_code

execute @s[scores={second=5}] ~ ~ ~ detect -55 77 41 rwm:extra_cracked_bricks 0 particle rwm:water_spurt -55 77 41
execute @s[scores={second=0}] ~ ~ ~ detect -55 77 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ew_s -55 77 41
execute @s[scores={second=0}] ~ ~ ~ detect -55 77 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ud_s -55 77 41
execute @s[scores={second=0}] ~ ~ ~ detect -55 77 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ew_s -55 78 41
execute @s[scores={second=0}] ~ ~ ~ detect -55 77 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ud_s -54 77 41

execute @s[scores={second=14}] ~ ~ ~ detect -51 77 41 rwm:extra_cracked_bricks 0 particle rwm:water_spurt -51 77 41
execute @s[scores={second=0}] ~ ~ ~ detect -51 77 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ew_s -51 77 41
execute @s[scores={second=0}] ~ ~ ~ detect -51 77 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ud_s -51 77 41
execute @s[scores={second=0}] ~ ~ ~ detect -51 77 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ew_s -51 78 41
execute @s[scores={second=0}] ~ ~ ~ detect -51 77 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ud_s -50 77 41

execute @s[scores={second=7}] ~ ~ ~ detect -52 75 41 rwm:extra_cracked_bricks 0 particle rwm:water_spurt -52 75 41
execute @s[scores={second=0}] ~ ~ ~ detect -52 75 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ew_s -52 75 41
execute @s[scores={second=0}] ~ ~ ~ detect -52 75 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ud_s -52 75 41
execute @s[scores={second=0}] ~ ~ ~ detect -52 75 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ew_s -52 76 41
execute @s[scores={second=0}] ~ ~ ~ detect -52 75 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ud_s -51 75 41

execute @s[scores={second=19}] ~ ~ ~ detect -54 73 41 rwm:extra_cracked_bricks 0 particle rwm:water_spurt -54 73 41
execute @s[scores={second=0}] ~ ~ ~ detect -54 73 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ew_s -54 73 41
execute @s[scores={second=0}] ~ ~ ~ detect -54 73 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ud_s -54 73 41
execute @s[scores={second=0}] ~ ~ ~ detect -54 73 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ew_s -54 74 41
execute @s[scores={second=0}] ~ ~ ~ detect -54 73 41 rwm:extra_cracked_bricks 0 particle rwm:border_1_ud_s -53 73 41

particle rwm:border_6_ud_s -56 76 41
particle rwm:border_6_ud_s -51 76 41
particle rwm:border_5_ew_s -53 79 41
particle rwm:border_5_ew_s -53 73 41