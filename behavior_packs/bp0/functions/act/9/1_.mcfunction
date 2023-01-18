
# Puzzle 1: Lights On Puzzle
# var1 - The current number of lights that are on
# var2 - A signal to update the door level
# var3 - Whether the door level is moving up or down (1 for up, -1 for down)

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ fill -108 78 121 -108 78 127 air
execute @s[tag=start_signal] ~ ~ ~ setblock -108 78 127 redstone_block
execute @s[tag=start_signal] ~ ~ ~ structure load "room9:door2" -108 77 117
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:cursor] -107 108 127

# Instructions for moving the cursor
execute @s ~ ~ ~ detect 0 0 0 concrete 1 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~1 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~-1 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~ ~1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~ ~-1
execute @s ~ ~ ~ detect 0 0 0 concrete -1 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~ ~ air 0 function api/cursor_oob

# Instruction for placing a block
execute @s ~ ~ ~ detect 0 0 0 concrete 5 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-30 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-30 ~ redstone_lamp 0 particle rwm:simon_lightup ~ ~-29.5 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-30 ~ redstone_lamp 0 setblock ~-1 ~-30 ~ redstone_block
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players set @s var2 1

execute @s[scores={var2=1}] ~ ~ ~ scoreboard players operation @s var3 = @s var1
execute @s[scores={var2=1}] ~ ~ ~ scoreboard players set @s var1 0
execute @s[scores={var2=1}] ~ ~ ~ detect -108 78 121 redstone_block 0 scoreboard players add @s var1 1
execute @s[scores={var2=1}] ~ ~ ~ detect -108 78 122 redstone_block 0 scoreboard players add @s var1 1
execute @s[scores={var2=1}] ~ ~ ~ detect -108 78 123 redstone_block 0 scoreboard players add @s var1 1
execute @s[scores={var2=1}] ~ ~ ~ detect -108 78 124 redstone_block 0 scoreboard players add @s var1 1
execute @s[scores={var2=1}] ~ ~ ~ detect -108 78 125 redstone_block 0 scoreboard players add @s var1 1
execute @s[scores={var2=1}] ~ ~ ~ detect -108 78 126 redstone_block 0 scoreboard players add @s var1 1
execute @s[scores={var2=1}] ~ ~ ~ detect -108 78 127 redstone_block 0 scoreboard players add @s var1 1
execute @s[scores={var2=1}] ~ ~ ~ scoreboard players operation @s var3 -= @s var1
execute @s[scores={var1=0,var2=1}] ~ ~ ~ structure load "room9:door1" -108 77 117
execute @s[scores={var1=1,var2=1}] ~ ~ ~ structure load "room9:door2" -108 77 117
execute @s[scores={var1=2,var2=1}] ~ ~ ~ structure load "room9:door3" -108 77 117
execute @s[scores={var1=3,var2=1}] ~ ~ ~ structure load "room9:door4" -108 77 117
execute @s[scores={var1=4,var2=1}] ~ ~ ~ structure load "room9:door5" -108 77 117
execute @s[scores={var1=5,var2=1}] ~ ~ ~ structure load "room9:door6" -108 77 117
execute @s[scores={var1=6,var2=1}] ~ ~ ~ structure load "room9:door7" -108 77 117
execute @s[scores={var1=7,var2=1}] ~ ~ ~ structure load "room9:door8" -108 77 117
execute @s[scores={var1=6..7,var2=1}] ~ ~ ~ fill -108 78 119 -108 78 117 barrier
execute @s[scores={var2=1,var3=..-1}] ~ ~ ~ playsound tile.piston.in @a ~ ~ ~ 1 1.5 1
execute @s[scores={var2=1,var3=1..}] ~ ~ ~ playsound tile.piston.out @a ~ ~ ~ 1 1.5 1
scoreboard players set @s var2 0

# Code stops running
execute @s[tag=end_signal,scores={var1=7}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=90100}] ~ ~ ~ scoreboard players add @s address 2