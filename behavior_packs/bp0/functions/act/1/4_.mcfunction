
# Puzzle 3: Cursor Puzzle
# var1 - The number of blocks matching the other side of the mirror

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

particle rwm:sparkle 11 74 83
particle rwm:sparkle 11 74 82
particle rwm:sparkle 11 74 81
particle rwm:sparkle 11 74 80
particle rwm:sparkle 11 74 79

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ fill 42 74 78 42 76 84 air
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:cursor] 42 104 83

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
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ setblock ~ ~-30 ~ lit_pumpkin 1

# Code stops running
scoreboard players set @s var1 0
execute @s ~ ~ ~ detect 42 74 83 lit_pumpkin 1 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 74 82 lit_pumpkin 1 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 74 81 lit_pumpkin 1 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 74 80 lit_pumpkin 1 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 74 79 lit_pumpkin 1 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 75 83 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 75 82 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 75 81 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 75 80 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 75 79 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 76 83 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 76 82 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 76 81 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 76 80 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 76 79 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 74 78 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 75 78 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 76 78 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 74 84 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 75 84 air 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 42 76 84 air 0 scoreboard players add @s var1 1
execute @s[tag=end_signal,scores={var1=21}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={var1=..20}] ~ ~ ~ scoreboard players add @s address 2

particle rwm:border_3_ud_w_2 42 75 84
particle rwm:border_3_ud_w_2 42 75 77
particle rwm:border_7_ns_w 41 74 81
particle rwm:border_7_ns_w_2 42 77 81

execute @s[scores={second=0}] ~ ~ ~ detect 42 74 83 air 0 particle rwm:border_1_ns_w 41 74 83
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 83 air 0 particle rwm:border_1_ns_w 41 75 83
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 83 air 0 particle rwm:border_1_ud_w 41 74 82
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 83 air 0 particle rwm:border_1_ud_w 41 74 83
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 79 air 0 particle rwm:border_1_ns_w 41 74 79
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 79 air 0 particle rwm:border_1_ns_w 41 75 79
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 79 air 0 particle rwm:border_1_ud_w 41 74 78
execute @s[scores={second=0}] ~ ~ ~ detect 42 74 79 air 0 particle rwm:border_1_ud_w 41 74 79