
execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

execute @s[tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:tarra] @s npc.boss.5.1

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var2 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var3 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var4 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var5 0
execute @s[tag=start_signal] ~ ~ ~ structure load "boss:ring_outer" 201 8 -612 0_degrees
execute @s[tag=start_signal] ~ ~ ~ structure load "boss:ring_middle" 207 7 -606 0_degrees
execute @s[tag=start_signal] ~ ~ ~ structure load "boss:ring_inner" 213 6 -600 0_degrees

# Instructions for rotating the rings
# Outer ring clockwise
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s[scores={var1=4}] var1 0
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var4 20
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var5 1

# Outer ring counterclockwise
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players remove @s var1 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s[scores={var1=-1}] var1 3
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var4 20
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var5 2

# Middle ring clockwise
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s[scores={var2=4}] var2 0
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var4 20
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var5 3

# Middle ring counterclockwise
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players remove @s var2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s[scores={var2=-1}] var2 3
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var4 20
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var5 4

# Inner ring clockwise
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players add @s var3 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players set @s[scores={var3=4}] var3 0
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players set @s var4 20
execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players set @s var5 5

# Inner ring counterclockwise
execute @s ~ ~ ~ detect 0 0 0 concrete 6 scoreboard players remove @s var3 1
execute @s ~ ~ ~ detect 0 0 0 concrete 6 scoreboard players set @s[scores={var3=-1}] var3 3
execute @s ~ ~ ~ detect 0 0 0 concrete 6 scoreboard players set @s var4 20
execute @s ~ ~ ~ detect 0 0 0 concrete 6 scoreboard players set @s var5 6

# Ring position build updates
execute @s[scores={var4=20}] ~ ~ ~ playsound item.spyglass.use @a ~ ~ ~ 1 0.5 1
execute @s[scores={var4=20,var5=1..2}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 0.6 1
execute @s[scores={var4=20,var5=3..4}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 0.8 1
execute @s[scores={var4=20,var5=5..6}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.0 1
execute @s[scores={var4=20,var5=1}] ~ ~ ~ particle rwm:ring_outer_clockwise 225 10 -588
execute @s[scores={var4=20,var5=2}] ~ ~ ~ particle rwm:ring_outer_counterclockwise 225 10 -588
execute @s[scores={var4=20,var5=3}] ~ ~ ~ particle rwm:ring_middle_clockwise 225 9 -588
execute @s[scores={var4=20,var5=4}] ~ ~ ~ particle rwm:ring_middle_counterclockwise 225 9 -588
execute @s[scores={var4=20,var5=5}] ~ ~ ~ particle rwm:ring_inner_clockwise 225 8 -588
execute @s[scores={var4=20,var5=6}] ~ ~ ~ particle rwm:ring_inner_counterclockwise 225 8 -588
execute @s[scores={var4=20,var1=0,var5=1}] ~ ~ ~ structure load "boss:ring_outer_45" 201 8 -612 270_degrees
execute @s[scores={var4=20,var1=1,var5=1}] ~ ~ ~ structure load "boss:ring_outer_45" 201 8 -612 0_degrees
execute @s[scores={var4=20,var1=2,var5=1}] ~ ~ ~ structure load "boss:ring_outer_45" 201 8 -612 90_degrees
execute @s[scores={var4=20,var1=3,var5=1}] ~ ~ ~ structure load "boss:ring_outer_45" 201 8 -612 180_degrees
execute @s[scores={var4=20,var1=0,var5=2}] ~ ~ ~ structure load "boss:ring_outer_45" 201 8 -612 0_degrees
execute @s[scores={var4=20,var1=1,var5=2}] ~ ~ ~ structure load "boss:ring_outer_45" 201 8 -612 90_degrees
execute @s[scores={var4=20,var1=2,var5=2}] ~ ~ ~ structure load "boss:ring_outer_45" 201 8 -612 180_degrees
execute @s[scores={var4=20,var1=3,var5=2}] ~ ~ ~ structure load "boss:ring_outer_45" 201 8 -612 270_degrees
execute @s[scores={var4=20,var2=0,var5=3}] ~ ~ ~ structure load "boss:ring_middle_45" 207 7 -606 270_degrees
execute @s[scores={var4=20,var2=1,var5=3}] ~ ~ ~ structure load "boss:ring_middle_45" 207 7 -606 0_degrees
execute @s[scores={var4=20,var2=2,var5=3}] ~ ~ ~ structure load "boss:ring_middle_45" 207 7 -606 90_degrees
execute @s[scores={var4=20,var2=3,var5=3}] ~ ~ ~ structure load "boss:ring_middle_45" 207 7 -606 180_degrees
execute @s[scores={var4=20,var2=0,var5=4}] ~ ~ ~ structure load "boss:ring_middle_45" 207 7 -606 0_degrees
execute @s[scores={var4=20,var2=1,var5=4}] ~ ~ ~ structure load "boss:ring_middle_45" 207 7 -606 90_degrees
execute @s[scores={var4=20,var2=2,var5=4}] ~ ~ ~ structure load "boss:ring_middle_45" 207 7 -606 180_degrees
execute @s[scores={var4=20,var2=3,var5=4}] ~ ~ ~ structure load "boss:ring_middle_45" 207 7 -606 270_degrees
execute @s[scores={var4=20,var3=0,var5=5}] ~ ~ ~ structure load "boss:ring_inner_45" 213 6 -600 270_degrees
execute @s[scores={var4=20,var3=1,var5=5}] ~ ~ ~ structure load "boss:ring_inner_45" 213 6 -600 0_degrees
execute @s[scores={var4=20,var3=2,var5=5}] ~ ~ ~ structure load "boss:ring_inner_45" 213 6 -600 90_degrees
execute @s[scores={var4=20,var3=3,var5=5}] ~ ~ ~ structure load "boss:ring_inner_45" 213 6 -600 180_degrees
execute @s[scores={var4=20,var3=0,var5=6}] ~ ~ ~ structure load "boss:ring_inner_45" 213 6 -600 0_degrees
execute @s[scores={var4=20,var3=1,var5=6}] ~ ~ ~ structure load "boss:ring_inner_45" 213 6 -600 90_degrees
execute @s[scores={var4=20,var3=2,var5=6}] ~ ~ ~ structure load "boss:ring_inner_45" 213 6 -600 180_degrees
execute @s[scores={var4=20,var3=3,var5=6}] ~ ~ ~ structure load "boss:ring_inner_45" 213 6 -600 270_degrees
execute @s[scores={var4=10,var1=0,var5=1..2}] ~ ~ ~ structure load "boss:ring_outer" 201 8 -612 0_degrees
execute @s[scores={var4=10,var1=1,var5=1..2}] ~ ~ ~ structure load "boss:ring_outer" 201 8 -612 90_degrees
execute @s[scores={var4=10,var1=2,var5=1..2}] ~ ~ ~ structure load "boss:ring_outer" 201 8 -612 180_degrees
execute @s[scores={var4=10,var1=3,var5=1..2}] ~ ~ ~ structure load "boss:ring_outer" 201 8 -612 270_degrees
execute @s[scores={var4=10,var2=0,var5=3..4}] ~ ~ ~ structure load "boss:ring_middle" 207 7 -606 0_degrees
execute @s[scores={var4=10,var2=1,var5=3..4}] ~ ~ ~ structure load "boss:ring_middle" 207 7 -606 90_degrees
execute @s[scores={var4=10,var2=2,var5=3..4}] ~ ~ ~ structure load "boss:ring_middle" 207 7 -606 180_degrees
execute @s[scores={var4=10,var2=3,var5=3..4}] ~ ~ ~ structure load "boss:ring_middle" 207 7 -606 270_degrees
execute @s[scores={var4=10,var3=0,var5=5..6}] ~ ~ ~ structure load "boss:ring_inner" 213 6 -600 0_degrees
execute @s[scores={var4=10,var3=1,var5=5..6}] ~ ~ ~ structure load "boss:ring_inner" 213 6 -600 90_degrees
execute @s[scores={var4=10,var3=2,var5=5..6}] ~ ~ ~ structure load "boss:ring_inner" 213 6 -600 180_degrees
execute @s[scores={var4=10,var3=3,var5=5..6}] ~ ~ ~ structure load "boss:ring_inner" 213 6 -600 270_degrees
scoreboard players remove @s[scores={var4=1..}] var4 1

# Code stops running
execute @s[tag=end_signal,scores={var1=3,var2=1,var3=2}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=110700}] ~ ~ ~ scoreboard players add @s address 2