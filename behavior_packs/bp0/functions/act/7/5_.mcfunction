
# Puzzle 3: Simon Says Puzzle
# var1 - A timer for repeating the current pattern, and allowing the npc time to move to the pad and back
# var2 - The current 'stage' of simon says
# var3 - The current number of inputs added to the sequence thus far
# var4 - The number of colors left to clear this stage (used to track whether the right sequence is input)

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ fill -134 81 49 -134 81 50 stone
execute @s[tag=start_signal] ~ ~ ~ fill -130 81 44 -131 81 44 stone
execute @s[tag=start_signal] ~ ~ ~ fill -125 81 44 -126 81 44 stone
execute @s[tag=start_signal] ~ ~ ~ fill -122 81 50 -122 81 49 stone
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:enderman_butler] -128 82 49
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 10000
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var3 0
execute @s[tag=start_signal,scores={var2=1}] ~ ~ ~ scoreboard players set @s var4 2
execute @s[tag=start_signal,scores={var2=2}] ~ ~ ~ scoreboard players set @s var4 3
execute @s[tag=start_signal,scores={var2=3}] ~ ~ ~ scoreboard players set @s var4 4

# Simon says pattern

# Pattern 1: Yellow -> Lime
execute @s[scores={var2=1,var1=0}] ~ ~ ~ scoreboard players set @s var1 120
execute @s[scores={var2=1,var1=120}] ~ ~ ~ function act/7/5_lamp_yellow
execute @s[scores={var2=1,var1=80}] ~ ~ ~ function act/7/5_lamp_lime

# Pattern 2: Light blue -> Lime -> Pink
execute @s[scores={var2=2,var1=0}] ~ ~ ~ scoreboard players set @s var1 160
execute @s[scores={var2=2,var1=160}] ~ ~ ~ function act/7/5_lamp_light_blue
execute @s[scores={var2=2,var1=120}] ~ ~ ~ function act/7/5_lamp_lime
execute @s[scores={var2=2,var1=80}] ~ ~ ~ function act/7/5_lamp_pink

# Pattern 3: Lime -> Yellow -> Pink -> Light blue
execute @s[scores={var2=3,var1=0}] ~ ~ ~ scoreboard players set @s var1 200
execute @s[scores={var2=3,var1=200}] ~ ~ ~ function act/7/5_lamp_lime
execute @s[scores={var2=3,var1=160}] ~ ~ ~ function act/7/5_lamp_yellow
execute @s[scores={var2=3,var1=120}] ~ ~ ~ function act/7/5_lamp_pink
execute @s[scores={var2=3,var1=80}] ~ ~ ~ function act/7/5_lamp_light_blue

# Clear all at end of pattern
execute @s[scores={var1=40}] ~ ~ ~ playsound random.fizz @a ~ ~ ~ 1 1 1
execute @s[scores={var1=40}] ~ ~ ~ fill -134 81 49 -134 81 50 stone
execute @s[scores={var1=40}] ~ ~ ~ fill -130 81 44 -131 81 44 stone
execute @s[scores={var1=40}] ~ ~ ~ fill -125 81 44 -126 81 44 stone
execute @s[scores={var1=40}] ~ ~ ~ fill -122 81 50 -122 81 49 stone
execute @s[scores={var1=40}] ~ ~ ~ detect -122 83 49 lit_redstone_lamp 0 particle rwm:simon_fizzle -122 83.5 49
execute @s[scores={var1=40}] ~ ~ ~ detect -122 83 49 lit_redstone_lamp 0 particle rwm:simon_fizzle -122 83.5 50
execute @s[scores={var1=40}] ~ ~ ~ detect -125 83 44 lit_redstone_lamp 0 particle rwm:simon_fizzle -125 83.5 44
execute @s[scores={var1=40}] ~ ~ ~ detect -125 83 44 lit_redstone_lamp 0 particle rwm:simon_fizzle -126 83.5 44
execute @s[scores={var1=40}] ~ ~ ~ detect -130 83 44 lit_redstone_lamp 0 particle rwm:simon_fizzle -131 83.5 44
execute @s[scores={var1=40}] ~ ~ ~ detect -130 83 44 lit_redstone_lamp 0 particle rwm:simon_fizzle -130 83.5 44
execute @s[scores={var1=40}] ~ ~ ~ detect -134 83 49 lit_redstone_lamp 0 particle rwm:simon_fizzle -134 83.5 49
execute @s[scores={var1=40}] ~ ~ ~ detect -134 83 49 lit_redstone_lamp 0 particle rwm:simon_fizzle -134 83.5 50

# Code signals
# Go to light blue
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players add @s var3 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players remove @s[scores={var2=2,var3=1}] var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players remove @s[scores={var2=3,var3=4}] var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var1 1040
execute @s[scores={var1=1040}] ~ ~ ~ tp @e[tag=target] -133 81.5 49
execute @s[scores={var1=1020}] ~ ~ ~ function act/7/5_lamp_light_blue
execute @s[scores={var1=1020}] ~ ~ ~ tp @e[tag=target] -128 81.5 49

# Go to pink
execute @s ~ ~ ~ detect 0 0 0 concrete 6 scoreboard players add @s var3 1
execute @s ~ ~ ~ detect 0 0 0 concrete 6 scoreboard players remove @s[scores={var2=2,var3=3}] var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 6 scoreboard players remove @s[scores={var2=3,var3=3}] var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 6 scoreboard players set @s var1 2040
execute @s[scores={var1=2040}] ~ ~ ~ tp @e[tag=target] -131 81.5 45
execute @s[scores={var1=2020}] ~ ~ ~ function act/7/5_lamp_pink
execute @s[scores={var1=2020}] ~ ~ ~ tp @e[tag=target] -128 81.5 49

# Go to lime
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players add @s var3 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players remove @s[scores={var2=1,var3=2}] var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players remove @s[scores={var2=2,var3=2}] var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players remove @s[scores={var2=3,var3=1}] var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players set @s var1 3040
execute @s[scores={var1=3040}] ~ ~ ~ tp @e[tag=target] -125 81.5 45
execute @s[scores={var1=3020}] ~ ~ ~ function act/7/5_lamp_lime
execute @s[scores={var1=3020}] ~ ~ ~ tp @e[tag=target] -128 81.5 49

# Go to yellow
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players add @s var3 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players remove @s[scores={var2=1,var3=1}] var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players remove @s[scores={var2=3,var3=2}] var4 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var1 4040
execute @s[scores={var1=4040}] ~ ~ ~ tp @e[tag=target] -123 81.5 49
execute @s[scores={var1=4020}] ~ ~ ~ function act/7/5_lamp_yellow
execute @s[scores={var1=4020}] ~ ~ ~ tp @e[tag=target] -128 81.5 49

execute @s[scores={var1=1..}] ~ ~ ~ scoreboard players remove @s var1 1
execute @s[scores={var1=1000}] ~ ~ ~ scoreboard players set @s var1 10000
execute @s[scores={var1=2000}] ~ ~ ~ scoreboard players set @s var1 10000
execute @s[scores={var1=3000}] ~ ~ ~ scoreboard players set @s var1 10000
execute @s[scores={var1=4000}] ~ ~ ~ scoreboard players set @s var1 10000
execute @s[scores={var1=10000,var2=1,var3=3..}] ~ ~ ~ scoreboard players set @s var4 10000
execute @s[scores={var1=10000,var2=2,var3=4..}] ~ ~ ~ scoreboard players set @s var4 10000
execute @s[scores={var1=10000,var2=3,var3=5..}] ~ ~ ~ scoreboard players set @s var4 10000
execute @s[scores={var1=1000..5000}] ~ ~ ~ scoreboard players set @s queue_tick 10

# Code stops running
execute @s[tag=end_signal,scores={var4=1..}] ~ ~ ~ scoreboard players add @s address 2
execute @s[tag=end_signal,scores={var2=3,var4=0}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={var2=1..2,var4=0}] ~ ~ ~ playsound random.orb @a ~ ~ ~ 1 1 1
execute @s[tag=end_signal,scores={var2=1..2,var4=0}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ particle rwm:checkmark ~ ~3 ~
execute @s[tag=end_signal,scores={var2=1..2,var4=0}] ~ ~ ~ tp @e[tag=target] -128 81.5 49
execute @s[tag=end_signal,scores={var2=1..2,var4=0}] ~ ~ ~ fill -134 81 49 -134 81 50 stone
execute @s[tag=end_signal,scores={var2=1..2,var4=0}] ~ ~ ~ fill -130 81 44 -131 81 44 stone
execute @s[tag=end_signal,scores={var2=1..2,var4=0}] ~ ~ ~ fill -125 81 44 -126 81 44 stone
execute @s[tag=end_signal,scores={var2=1..2,var4=0}] ~ ~ ~ fill -122 81 50 -122 81 49 stone
execute @s[tag=end_signal,scores={var2=1..2,var4=0}] ~ ~ ~ scoreboard players set @s var1 30
execute @s[tag=end_signal,scores={var2=1..2,var4=0}] ~ ~ ~ scoreboard players add @s var2 1