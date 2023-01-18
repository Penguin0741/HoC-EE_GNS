
# Puzzle 2: Weights Puzzle
# var1 - The amount of weight on the scale

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 0

execute @e[type=chicken,tag=!processed] ~ ~ ~ scoreboard players add @a[tag=main_player] var1 1
execute @e[type=sheep,tag=!processed] ~ ~ ~ scoreboard players add @a[tag=main_player] var1 3
execute @e[type=cow,tag=!processed] ~ ~ ~ scoreboard players add @a[tag=main_player] var1 5

execute @e[type=!player,type=!item,tag=!processed] ~ ~ ~ execute @a[tag=main_player] ~ ~ ~ function act/6/3_update_weight
execute @e[type=!player,type=!item,tag=!processed] ~ ~ ~ tag @s add processed

# Activity 2 win condition
execute @s[tag=end_signal,scores={var1=0..22}] ~ ~ ~ scoreboard players add @s address 2
execute @s[tag=end_signal,scores={var1=23}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={var1=24..}] ~ ~ ~ scoreboard players add @s address 2