
# Puzzle 4: Wallcracker Puzzle

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

execute @s[x=-121,y=78,z=198,dx=4,dy=4,dz=4] ~ ~ ~ scoreboard players add @s address 1

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ fill -117 78 198 -121 79 198 stonebrick
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:cursor] -119 108 198

# Instructions for moving the cursor
execute @s ~ ~ ~ detect 0 0 0 concrete 1 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~1 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~-1 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~1 ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~-1 ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete -1 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~ ~ air 0 function api/cursor_oob

# Instruction for placing a block
execute @s ~ ~ ~ detect 0 0 0 concrete 5 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-30 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ setblock ~ ~-30 ~ air 0 destroy

# Code stops running
scoreboard players set @s var1 0
execute @s ~ ~ ~ detect -117 79 198 stonebrick 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -118 79 198 stonebrick 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -119 79 198 stonebrick 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -120 79 198 stonebrick 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -121 79 198 stonebrick 0 scoreboard players add @s var1 1
execute @s[tag=end_signal,scores={address=80700}] ~ ~ ~ tp @e[type=rwm:cursor] -119 108 198
execute @s[tag=end_signal,scores={address=80700}] ~ ~ ~ event entity @e[type=rwm:cursor] sat

execute @s[scores={path=1}] ~ ~ ~ particle rwm:hallway_green -119 79 206
execute @s[scores={path=2}] ~ ~ ~ particle rwm:hallway_yellow -119 79 206
execute @s[scores={path=3}] ~ ~ ~ particle rwm:hallway_red -119 79 206

particle rwm:border_2_ud_n -117 79 197
particle rwm:border_2_ud_n -122 79 197
particle rwm:border_5_ew_n -119 78 197
particle rwm:border_5_ew_n -119 80 197