
# Puzzle 3: NPC Bridge Puzzle
# var1 - The current length of the bridge constructed

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

particle rwm:sparkle -115 79 190

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:zombie_minion] remove_goto
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:zombie_minion] -115 78 185
execute @s[tag=start_signal] ~ ~ ~ fill -115 77 186 -115 77 189 air
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:cursor] -115 107 186

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
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ setblock ~ ~-30 ~ gold_block

# Code stops running
scoreboard players set @s var1 0
execute @s ~ ~ ~ detect -115 77 186 gold_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -115 77 187 gold_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -115 77 188 gold_block 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -115 77 189 gold_block 0 scoreboard players add @s var1 1
execute @s[tag=end_signal,scores={var1=4}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={var1=0..3}] ~ ~ ~ scoreboard players add @s address 2

