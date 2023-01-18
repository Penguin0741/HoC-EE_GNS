
execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

execute @s[tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:tarra] @s npc.boss.2.1

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ fill 224 41 -567 226 41 -569 air 0 replace concrete
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:cursor] 224 91 -569

# Instructions for moving the cursor
execute @s ~ ~ ~ detect 0 0 0 concrete 1 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~ ~-1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~ ~1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~-1 ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~1 ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete -1 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~ ~ air 0 function api/cursor_oob

# Instruction for placing a block
execute @s ~ ~ ~ detect 0 0 0 concrete 5 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 6 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 7 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 8 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-50 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 6 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-50 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 7 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-50 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 8 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-50 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-50 ~ air 0 setblock ~ ~-50 ~ concrete 2
execute @s ~ ~ ~ detect 0 0 0 concrete 6 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-50 ~ air 0 setblock ~ ~-50 ~ concrete 5
execute @s ~ ~ ~ detect 0 0 0 concrete 7 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-50 ~ air 0 setblock ~ ~-50 ~ concrete 4
execute @s ~ ~ ~ detect 0 0 0 concrete 8 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-50 ~ air 0 setblock ~ ~-50 ~ concrete 3

# Code stops running
scoreboard players set @s var1 0
execute @s ~ ~ ~ detect 224 41 -567 concrete 2 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 224 41 -569 concrete 4 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 226 41 -569 concrete 3 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 226 41 -567 concrete 5 scoreboard players add @s var1 1
execute @s[tag=end_signal,scores={var1=4}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=110200}] ~ ~ ~ scoreboard players add @s address 2

particle rwm:border_3_ew_u 225 42 -570
particle rwm:border_3_ew_u 225 42 -567
particle rwm:border_3_ns_u 223 42 -568
particle rwm:border_3_ns_u 226 42 -568