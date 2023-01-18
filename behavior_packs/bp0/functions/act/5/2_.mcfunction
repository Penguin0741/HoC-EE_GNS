
# Puzzle 1: Cracked Wall Puzzle
# var1 - The current number of cracked bricks broken
# var2 - A signal to update the pond water level

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ fill -56 72 44 -50 79 42 air 0 replace water
execute @s[tag=start_signal] ~ ~ ~ fill -56 72 44 -50 79 42 air 0 replace flowing_water
execute @s[tag=start_signal] ~ ~ ~ structure load "room5:crackedwall" -56 72 41
execute @s[tag=start_signal] ~ ~ ~ setblock -55 77 41 rwm:extra_cracked_bricks
execute @s[tag=start_signal] ~ ~ ~ setblock -51 77 41 rwm:extra_cracked_bricks
execute @s[tag=start_signal] ~ ~ ~ setblock -52 75 41 rwm:extra_cracked_bricks
execute @s[tag=start_signal] ~ ~ ~ setblock -54 73 41 rwm:extra_cracked_bricks
execute @s[tag=start_signal] ~ ~ ~ fill -51 80 40 -55 80 40 air
execute @s[tag=start_signal] ~ ~ ~ setblock -53 80 40 redstone_block
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:cursor] -55 108 41

# Instructions for moving the cursor
execute @s ~ ~ ~ detect 0 0 0 concrete 1 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~1 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~-1 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~-1 ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~1 ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete -1 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~ ~ air 0 function api/cursor_oob

# Instruction for placing a block
execute @s ~ ~ ~ detect 0 0 0 concrete 5 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-30 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-30 ~ rwm:extra_cracked_bricks 0 execute @s ~ 80 40 detect ~ ~ ~ air 0 setblock ~ 80 40 redstone_block
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-30 ~ rwm:extra_cracked_bricks 0 setblock ~ ~-30 ~ flowing_water
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-30 ~ stonebrick 0 setblock ~ 80 40 stone
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-30 ~ stonebrick 0 setblock ~ ~-30 ~ air

# Code stops running
scoreboard players set @s var1 0
execute @s ~ ~ ~ detect -55 80 40 redstone_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -54 80 40 redstone_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -53 80 40 redstone_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -52 80 40 redstone_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -51 80 40 redstone_block 0 scoreboard players add @s var1 1
scoreboard players set @s var2 0
execute @s[tag=end_signal,scores={var1=5}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=50200}] ~ ~ ~ scoreboard players add @s address 2

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