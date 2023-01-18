
# Puzzle 4: Red Door Puzzle

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ tp @e[tag=click_detector] 0 70 0
execute @s[tag=start_signal] ~ ~ ~ fill 39 71 31 40 71 33 gold_block
execute @s[tag=start_signal] ~ ~ ~ tp @c 25 72 32 270 0

execute @s[scores={var1=0}] ~ ~ ~ detect 31 73 34 lever 12 scoreboard players add @s var1 1

execute @s[scores={var1=1}] ~ ~ ~ playsound copper.wax.off @a ~ ~ ~ 1 1 1
execute @s[scores={var1=1}] ~ ~ ~ fill 32 77 33 32 72 31 air
execute @s[scores={var1=1}] ~ ~ ~ fill 32 72 31 32 73 33 iron_block
execute @s[scores={var1=1}] ~ ~ ~ fill 32 74 32 32 77 32 chain

execute @s[scores={var1=11}] ~ ~ ~ playsound copper.wax.off @a ~ ~ ~ 1 1.05 1
execute @s[scores={var1=11}] ~ ~ ~ fill 32 77 33 32 72 31 air
execute @s[scores={var1=11}] ~ ~ ~ fill 32 73 31 32 74 33 iron_block
execute @s[scores={var1=11}] ~ ~ ~ fill 32 75 32 32 77 32 chain

execute @s[scores={var1=21}] ~ ~ ~ playsound copper.wax.off @a ~ ~ ~ 1 1.1 1
execute @s[scores={var1=21}] ~ ~ ~ fill 32 77 33 32 72 31 air
execute @s[scores={var1=21}] ~ ~ ~ fill 32 74 31 32 75 33 iron_block
execute @s[scores={var1=21}] ~ ~ ~ fill 32 76 32 32 77 32 chain

execute @s[scores={var1=31}] ~ ~ ~ playsound copper.wax.off @a ~ ~ ~ 1 1.15 1
execute @s[scores={var1=31}] ~ ~ ~ fill 32 77 33 32 72 31 air
execute @s[scores={var1=31}] ~ ~ ~ fill 32 75 31 32 76 33 iron_block
execute @s[scores={var1=31}] ~ ~ ~ fill 32 77 32 32 77 32 chain

execute @s[scores={var1=41}] ~ ~ ~ playsound copper.wax.off @a ~ ~ ~ 1 1.2 1
execute @s[scores={var1=41}] ~ ~ ~ fill 32 77 33 32 72 31 air
execute @s[scores={var1=41}] ~ ~ ~ fill 32 76 31 32 77 33 iron_block

execute @s[scores={var1=1..41}] ~ ~ ~ scoreboard players add @s var1 1

tag @a remove in_area
execute @c[x=39,y=72,z=31,dx=2,dy=2,dz=2] ~ ~ ~ tag @a add in_area
execute @s[scores={var2=0},tag=in_area] ~ ~ ~ playsound step.amethyst_block @a ~ ~ ~ 1 1 1
execute @s[scores={var2=0},tag=in_area] ~ ~ ~ fill 39 71 31 40 71 33 red_glazed_terracotta
execute @s[scores={var2=0},tag=in_area] ~ ~ ~ scoreboard players set @a var2 1
execute @s[scores={var2=1},tag=!in_area] ~ ~ ~ fill 39 71 31 40 71 33 gold_block
execute @s[scores={var2=1},tag=!in_area] ~ ~ ~ scoreboard players set @a var2 0

execute @s[tag=end_signal,tag=in_area] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,tag=!in_area] ~ ~ ~ scoreboard players add @s address 2