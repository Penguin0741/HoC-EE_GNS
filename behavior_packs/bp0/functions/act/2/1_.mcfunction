
# Puzzle 1: Bread Baking
# var1 - The station the chef moves to for step 1
# var2 - The station the chef moves to for step 2
# var3 - The station the chef moves to for step 3
# var4 - The station the chef moves to for step 4
# var5 - The current step awaiting input

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Zombie chef activity

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:zombie_chef] 17 71 124
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:zombie_chef] item_0
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:zombie_chef] remove_goto
execute @s[tag=start_signal] ~ ~ ~ event entity @e[tag=target] despawn
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var2 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var3 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var4 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var5 1

# Instruction for moving to step 1
execute @s[scores={var5=1}] ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var1 1
execute @s[scores={var5=2}] ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var2 1
execute @s[scores={var5=3}] ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var3 1
execute @s[scores={var5=4}] ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players add @s var5 1

# Instruction for moving to step 2
execute @s[scores={var5=1}] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var1 2
execute @s[scores={var5=2}] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var2 2
execute @s[scores={var5=3}] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var3 2
execute @s[scores={var5=4}] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var4 2
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players add @s var5 1

# Instruction for moving to step 3
execute @s[scores={var5=1}] ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var1 3
execute @s[scores={var5=2}] ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var2 3
execute @s[scores={var5=3}] ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var3 3
execute @s[scores={var5=4}] ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var4 3
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players add @s var5 1

# Instruction for moving to step 4
execute @s[scores={var5=1}] ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var1 4
execute @s[scores={var5=2}] ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var2 4
execute @s[scores={var5=3}] ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var3 4
execute @s[scores={var5=4}] ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var4 4
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players add @s var5 1

# Code stops running
execute @s[tag=end_signal] ~ ~ ~ scoreboard players add @s address 1

# Snap zombie chef to targets
execute @e[type=rwm:zombie_chef] ~ ~ ~ execute @e[tag=target,r=0.5] ~ ~ ~ function act/2/1_found_target