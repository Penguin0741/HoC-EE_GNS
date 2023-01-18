
# Puzzle 1: Hopper Puzzle
# var1 - The amount of concrete in the yellow hopper
# var2 - The amount of concrete in the light blue hopper
# var3 - The amount of concrete in the magenta hopper
# var4 - The amount of concrete in the orange hopper
# var5 - A signal to update the color of concrete under all the hoppers

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var2 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var3 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var4 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var5 0

# Dropping concrete
execute @s ~ ~ ~ detect 0 0 0 concrete 4 structure load room6:yellow_concrete -31 76 171 0_degrees none true false
execute @s ~ ~ ~ detect 0 0 0 concrete 4 particle rwm:sparkle -31 75 171
execute @s ~ ~ ~ detect 0 0 0 concrete 4 particle rwm:sparkle -31 75 171
execute @s ~ ~ ~ detect 0 0 0 concrete 4 particle rwm:sparkle -31 75 171
execute @s[scores={var1=0}] ~ ~ ~ detect 0 0 0 concrete 4 playsound random.pop @a ~ ~ ~ 1 0.7 1
execute @s[scores={var1=1}] ~ ~ ~ detect 0 0 0 concrete 4 playsound random.pop @a ~ ~ ~ 1 0.8 1
execute @s[scores={var1=2}] ~ ~ ~ detect 0 0 0 concrete 4 playsound random.pop @a ~ ~ ~ 1 0.9 1
execute @s[scores={var1=3}] ~ ~ ~ detect 0 0 0 concrete 4 playsound random.pop @a ~ ~ ~ 1 1.0 1
execute @s[scores={var1=4}] ~ ~ ~ detect 0 0 0 concrete 4 playsound random.pop @a ~ ~ ~ 1 1.1 1
execute @s[scores={var1=5..}] ~ ~ ~ detect 0 0 0 concrete 4 playsound random.pop @a ~ ~ ~ 1 1.2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var5 1

execute @s ~ ~ ~ detect 0 0 0 concrete 3 structure load room6:light_blue_concrete -33 76 171 0_degrees none true false
execute @s ~ ~ ~ detect 0 0 0 concrete 3 particle rwm:sparkle -33 75 171
execute @s ~ ~ ~ detect 0 0 0 concrete 3 particle rwm:sparkle -33 75 171
execute @s ~ ~ ~ detect 0 0 0 concrete 3 particle rwm:sparkle -33 75 171
execute @s[scores={var2=0}] ~ ~ ~ detect 0 0 0 concrete 3 playsound random.pop @a ~ ~ ~ 1 0.7 1
execute @s[scores={var2=1}] ~ ~ ~ detect 0 0 0 concrete 3 playsound random.pop @a ~ ~ ~ 1 0.8 1
execute @s[scores={var2=2}] ~ ~ ~ detect 0 0 0 concrete 3 playsound random.pop @a ~ ~ ~ 1 0.9 1
execute @s[scores={var2=3}] ~ ~ ~ detect 0 0 0 concrete 3 playsound random.pop @a ~ ~ ~ 1 1.0 1
execute @s[scores={var2=4}] ~ ~ ~ detect 0 0 0 concrete 3 playsound random.pop @a ~ ~ ~ 1 1.1 1
execute @s[scores={var2=5..}] ~ ~ ~ detect 0 0 0 concrete 3 playsound random.pop @a ~ ~ ~ 1 1.2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var5 1

execute @s ~ ~ ~ detect 0 0 0 concrete 2 structure load room6:magenta_concrete -35 76 171 0_degrees none true false
execute @s ~ ~ ~ detect 0 0 0 concrete 2 particle rwm:sparkle -35 75 171
execute @s ~ ~ ~ detect 0 0 0 concrete 2 particle rwm:sparkle -35 75 171
execute @s ~ ~ ~ detect 0 0 0 concrete 2 particle rwm:sparkle -35 75 171
execute @s[scores={var3=0}] ~ ~ ~ detect 0 0 0 concrete 2 playsound random.pop @a ~ ~ ~ 1 0.7 1
execute @s[scores={var3=1}] ~ ~ ~ detect 0 0 0 concrete 2 playsound random.pop @a ~ ~ ~ 1 0.8 1
execute @s[scores={var3=2}] ~ ~ ~ detect 0 0 0 concrete 2 playsound random.pop @a ~ ~ ~ 1 0.9 1
execute @s[scores={var3=3}] ~ ~ ~ detect 0 0 0 concrete 2 playsound random.pop @a ~ ~ ~ 1 1.0 1
execute @s[scores={var3=4}] ~ ~ ~ detect 0 0 0 concrete 2 playsound random.pop @a ~ ~ ~ 1 1.1 1
execute @s[scores={var3=5..}] ~ ~ ~ detect 0 0 0 concrete 2 playsound random.pop @a ~ ~ ~ 1 1.2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players add @s var3 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var5 1

execute @s ~ ~ ~ detect 0 0 0 concrete 5 structure load room6:orange_concrete -37 76 171 0_degrees none true false
execute @s ~ ~ ~ detect 0 0 0 concrete 5 particle rwm:sparkle -37 75 171
execute @s ~ ~ ~ detect 0 0 0 concrete 5 particle rwm:sparkle -37 75 171
execute @s ~ ~ ~ detect 0 0 0 concrete 5 particle rwm:sparkle -37 75 171
execute @s[scores={var4=0}] ~ ~ ~ detect 0 0 0 concrete 5 playsound random.pop @a ~ ~ ~ 1 0.7 1
execute @s[scores={var4=1}] ~ ~ ~ detect 0 0 0 concrete 5 playsound random.pop @a ~ ~ ~ 1 0.8 1
execute @s[scores={var4=2}] ~ ~ ~ detect 0 0 0 concrete 5 playsound random.pop @a ~ ~ ~ 1 0.9 1
execute @s[scores={var4=3}] ~ ~ ~ detect 0 0 0 concrete 5 playsound random.pop @a ~ ~ ~ 1 1.0 1
execute @s[scores={var4=4}] ~ ~ ~ detect 0 0 0 concrete 5 playsound random.pop @a ~ ~ ~ 1 1.1 1
execute @s[scores={var4=5..}] ~ ~ ~ detect 0 0 0 concrete 5 playsound random.pop @a ~ ~ ~ 1 1.2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players add @s var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players set @s var5 1

# Concrete under hoppers
execute @s[scores={var1=1,var5=1}] ~ ~ ~ setblock -31 72 171 concrete 4
execute @s[scores={var2=1..3,var5=1}] ~ ~ ~ setblock -33 72 171 concrete 4
execute @s[scores={var3=1..2,var5=1}] ~ ~ ~ setblock -35 72 171 concrete 4
execute @s[scores={var4=1,var5=1}] ~ ~ ~ setblock -37 72 171 concrete 4
execute @s[scores={var1=2,var5=1}] ~ ~ ~ setblock -31 72 171 concrete 5
execute @s[scores={var2=4,var5=1}] ~ ~ ~ setblock -33 72 171 concrete 5
execute @s[scores={var3=3,var5=1}] ~ ~ ~ setblock -35 72 171 concrete 5
execute @s[scores={var4=2,var5=1}] ~ ~ ~ setblock -37 72 171 concrete 5
execute @s[scores={var1=3..,var5=1}] ~ ~ ~ setblock -31 72 171 concrete 14
execute @s[scores={var2=5..,var5=1}] ~ ~ ~ setblock -33 72 171 concrete 14
execute @s[scores={var3=4..,var5=1}] ~ ~ ~ setblock -35 72 171 concrete 14
execute @s[scores={var4=3..,var5=1}] ~ ~ ~ setblock -37 72 171 concrete 14
scoreboard players set @s var5 0

# Activity 1 win condition
execute @s[tag=end_signal,scores={var1=2,var2=4,var3=3,var4=2}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=60100}] ~ ~ ~ scoreboard players add @s address 2