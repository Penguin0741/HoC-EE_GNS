
# Puzzle 2: Mosaic Puzzle
# var1 - The number of tiles in the correct space
# var2 - A timer to reset the pistons pushing up
# var3 - A timer to reset the pistons pushing down
# var4 - A timer to reset the pistons pushing left
# var5 - A timer to reset the pistons pushing right

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Switch to other activity
tag @s remove in_area
tag @s[x=14,y=72,z=170,r=5] add in_area
execute @s[tag=!queen] ~ ~ ~ particle rwm:sparkle 14 72 170
execute @s[tag=!queen,scores={second=0},tag=in_area] ~ ~ ~ particle rwm:interact 15 72 170
execute @s[tag=!queen] ~ ~ ~ detect 14 72 170 polished_blackstone_button 9 function act/3/1

# Mosaic puzzle

# Reset pushed redstone blocks
execute @s[scores={var2=1}] ~ ~ ~ fill 46 72 171 46 72 169 air
execute @s[scores={var2=1..}] ~ ~ ~ scoreboard players remove @s var2 1

execute @s[scores={var3=1}] ~ ~ ~ fill 46 76 171 46 76 169 air
execute @s[scores={var3=1..}] ~ ~ ~ scoreboard players remove @s var3 1

execute @s[scores={var4=1}] ~ ~ ~ fill 46 73 172 46 75 172 air
execute @s[scores={var4=1..}] ~ ~ ~ scoreboard players remove @s var4 1

execute @s[scores={var5=1}] ~ ~ ~ fill 46 73 168 46 75 168 air
execute @s[scores={var5=1..}] ~ ~ ~ scoreboard players remove @s var5 1

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ setblock 45 75 169 air
execute @s[tag=start_signal] ~ ~ ~ setblock 45 75 170 rwm:mosaic_1
execute @s[tag=start_signal] ~ ~ ~ setblock 45 75 171 rwm:mosaic_2
execute @s[tag=start_signal] ~ ~ ~ setblock 45 74 171 rwm:mosaic_3
execute @s[tag=start_signal] ~ ~ ~ setblock 45 74 169 rwm:mosaic_4
execute @s[tag=start_signal] ~ ~ ~ setblock 45 74 170 rwm:mosaic_5
execute @s[tag=start_signal] ~ ~ ~ setblock 45 73 171 rwm:mosaic_6
execute @s[tag=start_signal] ~ ~ ~ setblock 45 73 169 rwm:mosaic_7
execute @s[tag=start_signal] ~ ~ ~ setblock 45 73 170 rwm:mosaic_8

# Push up
execute @s ~ ~ ~ detect 0 0 0 concrete 1 fill 46 72 171 46 72 169 redstone_block
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var2 4

# Push down
execute @s ~ ~ ~ detect 0 0 0 concrete 2 fill 46 76 171 46 76 169 redstone_block
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var3 4

# Push left
execute @s ~ ~ ~ detect 0 0 0 concrete 3 fill 46 73 172 46 75 172 redstone_block
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var4 4

# Push right
execute @s ~ ~ ~ detect 0 0 0 concrete 4 fill 46 73 168 46 75 168 redstone_block
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var5 4

# Code stops running
scoreboard players set @s var1 0
execute @s ~ ~ ~ detect 45 75 169 rwm:mosaic_1 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 45 75 170 rwm:mosaic_2 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 45 75 171 rwm:mosaic_3 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 45 74 169 rwm:mosaic_4 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 45 74 170 rwm:mosaic_5 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 45 74 171 rwm:mosaic_6 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 45 73 170 rwm:mosaic_7 0 scoreboard players add @s var1 1
execute @s ~ ~ ~ detect 45 73 171 rwm:mosaic_8 0 scoreboard players add @s var1 1
execute @s[tag=end_signal,scores={var1=8}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={var1=..7}] ~ ~ ~ scoreboard players add @s address 2