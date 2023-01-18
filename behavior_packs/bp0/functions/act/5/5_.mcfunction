
# Puzzle 3: Flower Puzzle
# var1 - The current number of flowers in the right place

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ structure load "room5:flowerbeds" -56 76 78
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:cursor] -51 106 80

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

# Place red flower
execute @s ~ ~ ~ detect 0 0 0 concrete 5 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-30 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-31 ~ dirt -1 setblock ~ ~-30 ~ red_flower
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-31 ~ podzol -1 setblock ~ ~-30 ~ red_flower
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players set @s var2 1

# Place yellow flower
execute @s ~ ~ ~ detect 0 0 0 concrete 6 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 6 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-30 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 6 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-31 ~ dirt -1 setblock ~ ~-30 ~ yellow_flower
execute @s ~ ~ ~ detect 0 0 0 concrete 6 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-31 ~ podzol -1 setblock ~ ~-30 ~ yellow_flower
execute @s ~ ~ ~ detect 0 0 0 concrete 6 scoreboard players set @s var2 2

# Place blue flower
execute @s ~ ~ ~ detect 0 0 0 concrete 7 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 7 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-30 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 7 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-31 ~ dirt -1 setblock ~ ~-30 ~ red_flower 1
execute @s ~ ~ ~ detect 0 0 0 concrete 7 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~-31 ~ podzol -1 setblock ~ ~-30 ~ red_flower 1
execute @s ~ ~ ~ detect 0 0 0 concrete 7 scoreboard players set @s var2 3

# Update concrete whenever a new flower is placed
execute @s[scores={var2=1}] ~ ~ ~ detect -51 76 78 red_flower 0 setblock -51 78 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -52 76 78 red_flower 0 setblock -52 78 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -53 76 78 red_flower 0 setblock -53 78 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -54 76 78 red_flower 0 setblock -54 78 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -55 76 78 red_flower 0 setblock -55 78 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -56 76 78 red_flower 0 setblock -56 78 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -51 76 79 red_flower 0 setblock -51 79 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -52 76 79 red_flower 0 setblock -52 79 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -53 76 79 red_flower 0 setblock -53 79 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -54 76 79 red_flower 0 setblock -54 79 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -55 76 79 red_flower 0 setblock -55 79 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -56 76 79 red_flower 0 setblock -56 79 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -51 76 80 red_flower 0 setblock -51 80 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -52 76 80 red_flower 0 setblock -52 80 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -53 76 80 red_flower 0 setblock -53 80 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -54 76 80 red_flower 0 setblock -54 80 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -55 76 80 red_flower 0 setblock -55 80 82 concrete 14
execute @s[scores={var2=1}] ~ ~ ~ detect -56 76 80 red_flower 0 setblock -56 80 82 concrete 14

execute @s[scores={var2=2}] ~ ~ ~ detect -51 76 78 yellow_flower 0 setblock -51 78 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -52 76 78 yellow_flower 0 setblock -52 78 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -53 76 78 yellow_flower 0 setblock -53 78 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -54 76 78 yellow_flower 0 setblock -54 78 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -55 76 78 yellow_flower 0 setblock -55 78 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -56 76 78 yellow_flower 0 setblock -56 78 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -51 76 79 yellow_flower 0 setblock -51 79 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -52 76 79 yellow_flower 0 setblock -52 79 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -53 76 79 yellow_flower 0 setblock -53 79 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -54 76 79 yellow_flower 0 setblock -54 79 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -55 76 79 yellow_flower 0 setblock -55 79 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -56 76 79 yellow_flower 0 setblock -56 79 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -51 76 80 yellow_flower 0 setblock -51 80 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -52 76 80 yellow_flower 0 setblock -52 80 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -53 76 80 yellow_flower 0 setblock -53 80 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -54 76 80 yellow_flower 0 setblock -54 80 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -55 76 80 yellow_flower 0 setblock -55 80 82 concrete 4
execute @s[scores={var2=2}] ~ ~ ~ detect -56 76 80 yellow_flower 0 setblock -56 80 82 concrete 4

execute @s[scores={var2=3}] ~ ~ ~ detect -51 76 78 red_flower 1 setblock -51 78 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -52 76 78 red_flower 1 setblock -52 78 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -53 76 78 red_flower 1 setblock -53 78 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -54 76 78 red_flower 1 setblock -54 78 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -55 76 78 red_flower 1 setblock -55 78 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -56 76 78 red_flower 1 setblock -56 78 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -51 76 79 red_flower 1 setblock -51 79 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -52 76 79 red_flower 1 setblock -52 79 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -53 76 79 red_flower 1 setblock -53 79 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -54 76 79 red_flower 1 setblock -54 79 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -55 76 79 red_flower 1 setblock -55 79 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -56 76 79 red_flower 1 setblock -56 79 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -51 76 80 red_flower 1 setblock -51 80 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -52 76 80 red_flower 1 setblock -52 80 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -53 76 80 red_flower 1 setblock -53 80 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -54 76 80 red_flower 1 setblock -54 80 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -55 76 80 red_flower 1 setblock -55 80 82 concrete 3
execute @s[scores={var2=3}] ~ ~ ~ detect -56 76 80 red_flower 1 setblock -56 80 82 concrete 3
scoreboard players set @s var2 0

# Code stops running
scoreboard players set @s var1 0
execute @s ~ ~ ~ detect -51 76 78 red_flower 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -52 76 78 red_flower 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -53 76 78 red_flower 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -54 76 78 red_flower 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -55 76 78 red_flower 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -56 76 78 red_flower 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -51 76 79 yellow_flower 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -52 76 79 yellow_flower 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -53 76 79 yellow_flower 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -54 76 79 yellow_flower 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -55 76 79 yellow_flower 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -56 76 79 yellow_flower 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -51 76 80 red_flower 1 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -52 76 80 red_flower 1 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -53 76 80 red_flower 1 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -54 76 80 red_flower 1 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -55 76 80 red_flower 1 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect -56 76 80 red_flower 1 scoreboard players add @s var1 1

execute @s[tag=end_signal,scores={var1=18}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=50500}] ~ ~ ~ scoreboard players add @s address 2

particle rwm:border_3_ns_u -51 76.5 79
particle rwm:border_3_ns_u -57 76.5 79
particle rwm:border_6_ew_u -53.5 76.5 80
particle rwm:border_6_ew_u -53.5 76.5 77