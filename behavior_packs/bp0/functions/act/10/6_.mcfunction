
# Puzzle 3: Skylight Puzzle

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ setblock 26 79 31 trapdoor 3
execute @s[tag=start_signal] ~ ~ ~ setblock 26 79 33 trapdoor 3
execute @s[tag=start_signal] ~ ~ ~ setblock 24 79 33 trapdoor 3
execute @s[tag=start_signal] ~ ~ ~ setblock 24 79 31 trapdoor 3
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:moon_beam,c=1] reset
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:cursor] 26 109 31

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
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-30 ~ trapdoor -1 event entity @e[type=rwm:moon_beam,c=1] shine
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-30 ~ trapdoor -1 setblock ~ ~-30 ~ trapdoor 14

# Code stops running
scoreboard players set @s var1 0
execute @s ~ ~ ~ detect 26 79 31 trapdoor 14 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 26 79 33 trapdoor 14 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 24 79 33 trapdoor 14 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 24 79 31 trapdoor 14 scoreboard players add @s var1 1
execute @s[tag=end_signal,scores={var1=4}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=100600}] ~ ~ ~ scoreboard players add @s address 2

execute @s[scores={second=0}] ~ ~ ~ detect 26 79 31 trapdoor 14 particle rwm:charging_4 25 72 32
execute @s[scores={second=5}] ~ ~ ~ detect 26 79 33 trapdoor 14 particle rwm:charging_3 25 72 32
execute @s[scores={second=10}] ~ ~ ~ detect 24 79 33 trapdoor 14 particle rwm:charging_2 25 72 32
execute @s[scores={second=15}] ~ ~ ~ detect 24 79 31 trapdoor 14 particle rwm:charging_1 25 72 32

execute @s[scores={second=0}] ~ ~ ~ particle rwm:arrow_up 25 73.3 32

particle rwm:border_3_ew_d 25 79 33
particle rwm:border_3_ew_d 25 79 30
particle rwm:border_3_ns_d 26 79 32
particle rwm:border_3_ns_d 23 79 32