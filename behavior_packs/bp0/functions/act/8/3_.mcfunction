
# Puzzle 2: Windy Bridge Puzzle
# var1 - The current amount of holes that have been filled

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

execute @s[scores={var2=200}] ~ ~ ~ playsound elytra.loop @a -111 78 181 0.3 1 0
execute @s[scores={var2=1..}] ~ ~ ~ scoreboard players remove @s var2 1
execute @s[scores={var2=0}] ~ ~ ~ scoreboard players set @s var2 200

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ setblock -111 76 179 air
execute @s[tag=start_signal] ~ ~ ~ setblock -111 77 181 air
execute @s[tag=start_signal] ~ ~ ~ setblock -111 76 183 air
execute @s[tag=start_signal] ~ ~ ~ tp @e[tag=wind_1] -111 76 179
execute @s[tag=start_signal] ~ ~ ~ tp @e[tag=wind_2] -111 77 181
execute @s[tag=start_signal] ~ ~ ~ tp @e[tag=wind_3] -111 76 183
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:cursor] -111 106 178

# Instructions for moving the cursor
execute @s ~ ~ ~ detect 0 0 0 concrete 1 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~1 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~-1 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~ ~-1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~ ~1
execute @s ~ ~ ~ detect 0 0 0 concrete -1 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~ ~ air 0 function api/cursor_oob

# Instruction for placing a block
execute @s ~ ~ ~ detect 0 0 0 concrete 5 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-30 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-30 ~ air 0 execute @s ~ ~-30 ~ execute @e[type=rwm:wind_cube,c=1] ~ ~ ~ tp @s ~ ~30 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-30 ~ air 0 setblock ~ ~-30 ~ gold_block

# Wind slowness
execute @a[x=-121,y=75,z=179,dx=4,dy=4,dz=4] ~ ~ ~ effect @s slowness 1 3 true

# Code stops running
scoreboard players set @s var1 0
execute @s ~ ~ ~ detect -111 76 179 gold_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -111 77 181 gold_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -111 76 183 gold_block 0 scoreboard players add @s var1 1
execute @s[tag=end_signal,scores={var1=3}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={var1=0..2}] ~ ~ ~ scoreboard players add @s address 2

particle rwm:border_4_ud_w -112 77 177
particle rwm:border_4_ud_w -112 77 184
particle rwm:border_7_ns_w -112 75 181
particle rwm:border_7_ns_w -112 79 181