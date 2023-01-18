
# Puzzle 2: Laser Battery Puzzle
# var1 - The current amount of holes that have been filled

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ setblock -118 75 120 air
execute @s[tag=start_signal] ~ ~ ~ setblock -122 75 120 air
execute @s[tag=start_signal] ~ ~ ~ setblock -120 75 122 air
execute @s[tag=start_signal] ~ ~ ~ setblock -118 75 124 air
execute @s[tag=start_signal] ~ ~ ~ setblock -122 75 124 air
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:cursor] -118 105 120

# Instructions for moving the cursor
execute @s ~ ~ ~ detect 0 0 0 concrete 1 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~ ~1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~ ~-1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~1 ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~-1 ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete -1 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~ ~ air 0 function api/cursor_oob

# Instruction for placing a block
execute @s ~ ~ ~ detect 0 0 0 concrete 5 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-30 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-30 ~ air 0 scoreboard players set @a var2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-30 ~ air 0 setblock ~ ~-30 ~ gold_block

# Code stops running
scoreboard players set @s var1 0
execute @s ~ ~ ~ detect -118 75 120 gold_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -122 75 120 gold_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -120 75 122 gold_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -118 75 124 gold_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -122 75 124 gold_block 0 scoreboard players add @s var1 1

execute @s[tag=end_signal,scores={var1=5}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=90300}] ~ ~ ~ scoreboard players add @s address 2

particle rwm:border_5_ew_u -120 76 119
particle rwm:border_5_ew_u -120 76 124
particle rwm:border_5_ns_u -118 76 122
particle rwm:border_5_ns_u -123 76 122