
# Puzzle 3: Laser Puzzle (Part 1)
# var1 - A timer used to shift the rows left and right
# var2 - The current length of laser 1
# var3 - The current length of laser 2
# var4 - The current length of laser 3
# var5 - The current length of laser 4

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ structure load "room9:greenline" -134 73 118
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 2

# Green line shifted left
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var1 140
execute @s[scores={var1=140}] ~ ~ ~ playsound block.itemframe.rotate_item @a ~ ~ ~ 1 1 1
execute @s[scores={var1=140}] ~ ~ ~ clone -134 73 126 -134 73 126 -134 73 127 replace move
execute @s[scores={var1=135}] ~ ~ ~ detect -134 73 127 stained_glass -1 summon rwm:laser_tape -134 74 122 glass_lime
execute @s[scores={var1=135}] ~ ~ ~ detect -134 73 127 wool -1 summon rwm:laser_tape -134 74 122 wool_lime
execute @s[scores={var1=135}] ~ ~ ~ clone -134 73 127 -134 73 127 -129 72 122 replace move
execute @s[scores={var1=135}] ~ ~ ~ setblock -134 71 127 redstone_block
execute @s[scores={var1=135}] ~ ~ ~ event entity @e[type=rwm:laser_tape] launch_1
execute @s[scores={var1=112}] ~ ~ ~ setblock -134 71 127 air
execute @s[scores={var1=112}] ~ ~ ~ event entity @e[type=rwm:laser_tape] despawn
execute @s[scores={var1=112}] ~ ~ ~ clone -129 72 122 -129 72 122 -134 73 117 replace move
execute @s[scores={var1=105}] ~ ~ ~ playsound tile.piston.in @a ~ ~ ~ 1 1.5 1
execute @s[scores={var1=105}] ~ ~ ~ clone -134 73 117 -134 73 125 -134 73 118 replace move

# Green line shifted right
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var1 240
execute @s[scores={var1=240}] ~ ~ ~ playsound block.itemframe.rotate_item @a ~ ~ ~ 1 1 1
execute @s[scores={var1=240}] ~ ~ ~ clone -134 73 118 -134 73 118 -134 73 117 replace move
execute @s[scores={var1=235}] ~ ~ ~ detect -134 73 117 stained_glass -1 summon rwm:laser_tape -134 74 122 glass_lime
execute @s[scores={var1=235}] ~ ~ ~ detect -134 73 117 wool -1 summon rwm:laser_tape -134 74 122 wool_lime
execute @s[scores={var1=235}] ~ ~ ~ clone -134 73 117 -134 73 117 -129 72 122 replace move
execute @s[scores={var1=235}] ~ ~ ~ setblock -134 71 117 redstone_block
execute @s[scores={var1=235}] ~ ~ ~ event entity @e[type=rwm:laser_tape] launch_2
execute @s[scores={var1=212}] ~ ~ ~ setblock -134 71 117 air
execute @s[scores={var1=212}] ~ ~ ~ event entity @e[type=rwm:laser_tape] despawn
execute @s[scores={var1=212}] ~ ~ ~ clone -129 72 122 -129 72 122 -134 73 127 replace move
execute @s[scores={var1=205}] ~ ~ ~ playsound tile.piston.out @a ~ ~ ~ 1 1.5 1
execute @s[scores={var1=205}] ~ ~ ~ clone -134 73 119 -134 73 127 -134 73 118 replace move

# Yellow line shifted left
# execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var1 340
# execute @s[scores={var1=340}] ~ ~ ~ playsound block.itemframe.rotate_item @a ~ ~ ~ 1 1 1
# execute @s[scores={var1=340}] ~ ~ ~ clone -137 73 126 -137 73 126 -137 73 127 replace move
# execute @s[scores={var1=335}] ~ ~ ~ detect -137 73 127 stained_glass -1 summon rwm:laser_tape -137 74 122 glass_yellow
# execute @s[scores={var1=335}] ~ ~ ~ detect -137 73 127 wool -1 summon rwm:laser_tape -137 74 122 wool_yellow
# execute @s[scores={var1=335}] ~ ~ ~ clone -137 73 127 -137 73 127 -129 72 122 replace move
# execute @s[scores={var1=335}] ~ ~ ~ setblock -137 71 127 redstone_block
# execute @s[scores={var1=335}] ~ ~ ~ event entity @e[type=rwm:laser_tape] launch_1
# execute @s[scores={var1=312}] ~ ~ ~ setblock -137 71 127 air
# execute @s[scores={var1=312}] ~ ~ ~ event entity @e[type=rwm:laser_tape] despawn
# execute @s[scores={var1=312}] ~ ~ ~ clone -129 72 122 -129 72 122 -137 73 117 replace move
# execute @s[scores={var1=305}] ~ ~ ~ playsound tile.piston.in @a ~ ~ ~ 1 1.5 1
# execute @s[scores={var1=305}] ~ ~ ~ clone -137 73 117 -137 73 125 -137 73 118 replace move

# Yellow line shifted right
# execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var1 440
# execute @s[scores={var1=440}] ~ ~ ~ playsound block.itemframe.rotate_item @a ~ ~ ~ 1 1 1
# execute @s[scores={var1=440}] ~ ~ ~ clone -137 73 118 -137 73 118 -137 73 117 replace move
# execute @s[scores={var1=435}] ~ ~ ~ detect -137 73 117 stained_glass -1 summon rwm:laser_tape -137 74 122 glass_yellow
# execute @s[scores={var1=435}] ~ ~ ~ detect -137 73 117 wool -1 summon rwm:laser_tape -137 74 122 wool_yellow
# execute @s[scores={var1=435}] ~ ~ ~ clone -137 73 117 -137 73 117 -129 72 122 replace move
# execute @s[scores={var1=435}] ~ ~ ~ setblock -137 71 117 redstone_block
# execute @s[scores={var1=435}] ~ ~ ~ event entity @e[type=rwm:laser_tape] launch_2
# execute @s[scores={var1=412}] ~ ~ ~ setblock -137 71 117 air
# execute @s[scores={var1=412}] ~ ~ ~ event entity @e[type=rwm:laser_tape] despawn
# execute @s[scores={var1=412}] ~ ~ ~ clone -129 72 122 -129 72 122 -137 73 127 replace move
# execute @s[scores={var1=405}] ~ ~ ~ playsound tile.piston.out @a ~ ~ ~ 1 1.5 1
# execute @s[scores={var1=405}] ~ ~ ~ clone -137 73 119 -137 73 127 -137 73 118 replace move

# Red line shifted left
# execute @s ~ ~ ~ detect 0 0 0 concrete 5 scoreboard players set @s var1 540
# execute @s[scores={var1=540}] ~ ~ ~ playsound block.itemframe.rotate_item @a ~ ~ ~ 1 1 1
# execute @s[scores={var1=540}] ~ ~ ~ clone -140 73 126 -140 73 126 -140 73 127 replace move
# execute @s[scores={var1=535}] ~ ~ ~ detect -140 73 127 stained_glass -1 summon rwm:laser_tape -140 74 122 glass_red
# execute @s[scores={var1=535}] ~ ~ ~ detect -140 73 127 wool -1 summon rwm:laser_tape -140 74 122 wool_red
# execute @s[scores={var1=535}] ~ ~ ~ clone -140 73 127 -140 73 127 -129 72 122 replace move
# execute @s[scores={var1=535}] ~ ~ ~ setblock -140 71 127 redstone_block
# execute @s[scores={var1=535}] ~ ~ ~ event entity @e[type=rwm:laser_tape] launch_1
# execute @s[scores={var1=512}] ~ ~ ~ setblock -140 71 127 air
# execute @s[scores={var1=512}] ~ ~ ~ event entity @e[type=rwm:laser_tape] despawn
# execute @s[scores={var1=512}] ~ ~ ~ clone -129 72 122 -129 72 122 -140 73 117 replace move
# execute @s[scores={var1=505}] ~ ~ ~ playsound tile.piston.in @a ~ ~ ~ 1 1.5 1
# execute @s[scores={var1=505}] ~ ~ ~ clone -140 73 117 -140 73 125 -140 73 118 replace move

# Red line shifted right
# execute @s ~ ~ ~ detect 0 0 0 concrete 6 scoreboard players set @s var1 640
# execute @s[scores={var1=640}] ~ ~ ~ playsound block.itemframe.rotate_item @a ~ ~ ~ 1 1 1
# execute @s[scores={var1=640}] ~ ~ ~ clone -140 73 118 -140 73 118 -140 73 117 replace move
# execute @s[scores={var1=635}] ~ ~ ~ detect -140 73 117 stained_glass -1 summon rwm:laser_tape -140 74 122 glass_red
# execute @s[scores={var1=635}] ~ ~ ~ detect -140 73 117 wool -1 summon rwm:laser_tape -140 74 122 wool_red
# execute @s[scores={var1=635}] ~ ~ ~ clone -140 73 117 -140 73 117 -129 72 122 replace move
# execute @s[scores={var1=635}] ~ ~ ~ setblock -140 71 117 redstone_block
# execute @s[scores={var1=635}] ~ ~ ~ event entity @e[type=rwm:laser_tape] launch_2
# execute @s[scores={var1=612}] ~ ~ ~ setblock -140 71 117 air
# execute @s[scores={var1=612}] ~ ~ ~ event entity @e[type=rwm:laser_tape] despawn
# execute @s[scores={var1=612}] ~ ~ ~ clone -129 72 122 -129 72 122 -140 73 127 replace move
# execute @s[scores={var1=605}] ~ ~ ~ playsound tile.piston.out @a ~ ~ ~ 1 1.5 1
# execute @s[scores={var1=605}] ~ ~ ~ clone -140 73 119 -140 73 127 -140 73 118 replace move

execute @s[scores={var1=1..}] ~ ~ ~ scoreboard players remove @s var1 1
execute @s[scores={var1=104}] ~ ~ ~ scoreboard players set @s var1 1
execute @s[scores={var1=204}] ~ ~ ~ scoreboard players set @s var1 1
execute @s[scores={var1=304}] ~ ~ ~ scoreboard players set @s var1 1
execute @s[scores={var1=404}] ~ ~ ~ scoreboard players set @s var1 1
execute @s[scores={var1=504}] ~ ~ ~ scoreboard players set @s var1 1
execute @s[scores={var1=604}] ~ ~ ~ scoreboard players set @s var1 1

# Determine laser lengths
execute @s[scores={var1=1}] ~ ~ ~ scoreboard players set @s var2 0
execute @s[scores={var1=1}] ~ ~ ~ scoreboard players set @s var3 0
execute @s[scores={var1=1}] ~ ~ ~ scoreboard players set @s var4 0
execute @s[scores={var1=1}] ~ ~ ~ scoreboard players set @s var5 0
execute @s[scores={var1=1,var2=0}] ~ ~ ~ detect -134 73 119 stained_glass -1 scoreboard players add @s var2 1
execute @s[scores={var1=1,var2=1}] ~ ~ ~ detect -137 73 119 stained_glass -1 scoreboard players add @s var2 1
execute @s[scores={var1=1,var2=2}] ~ ~ ~ detect -140 73 119 stained_glass -1 scoreboard players add @s var2 1
execute @s[scores={var1=1,var3=0}] ~ ~ ~ detect -134 73 121 stained_glass -1 scoreboard players add @s var3 1
execute @s[scores={var1=1,var3=1}] ~ ~ ~ detect -137 73 121 stained_glass -1 scoreboard players add @s var3 1
execute @s[scores={var1=1,var3=2}] ~ ~ ~ detect -140 73 121 stained_glass -1 scoreboard players add @s var3 1
execute @s[scores={var1=1,var4=0}] ~ ~ ~ detect -134 73 123 stained_glass -1 scoreboard players add @s var4 1
execute @s[scores={var1=1,var4=1}] ~ ~ ~ detect -137 73 123 stained_glass -1 scoreboard players add @s var4 1
execute @s[scores={var1=1,var4=2}] ~ ~ ~ detect -140 73 123 stained_glass -1 scoreboard players add @s var4 1
execute @s[scores={var1=1,var5=0}] ~ ~ ~ detect -134 73 125 stained_glass -1 scoreboard players add @s var5 1
execute @s[scores={var1=1,var5=1}] ~ ~ ~ detect -137 73 125 stained_glass -1 scoreboard players add @s var5 1
execute @s[scores={var1=1,var5=2}] ~ ~ ~ detect -140 73 125 stained_glass -1 scoreboard players add @s var5 1

# Adjust laser & light visuals
execute @s[scores={var1=1,var3=0}] ~ ~ ~ event entity @e[tag=laser1] length_1
execute @s[scores={var1=1,var3=1}] ~ ~ ~ event entity @e[tag=laser1] length_10
execute @s[scores={var1=1,var3=0}] ~ ~ ~ setblock -143 72 121 iron_block
execute @s[scores={var1=1,var3=1}] ~ ~ ~ setblock -143 72 121 redstone_block

# Code stops running
execute @s[tag=end_signal,scores={var3=1}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=90500}] ~ ~ ~ scoreboard players add @s address 2