
# Puzzle 1: Staircase Puzzle

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Switch to other activity
tag @s remove in_area
tag @s[x=40,y=72,z=167,r=5] add in_area
execute @s[tag=!king] ~ ~ ~ particle rwm:sparkle 40 72 167
execute @s[tag=!king,scores={second=0},tag=in_area] ~ ~ ~ particle rwm:interact 40 72 168
execute @s[tag=!king] ~ ~ ~ detect 40 72 167 polished_blackstone_button 9 function act/3/3

# Resetting activity
execute @s ~ ~ ~ detect 14 72 170 crimson_button 9 playsound block.end_portal_frame.fill @a ~ ~ ~ 1 1 1
execute @s ~ ~ ~ detect 14 72 170 crimson_button 9 function api/stop_code
execute @s ~ ~ ~ detect 14 72 170 crimson_button 9 tag @s add start_signal
execute @s ~ ~ ~ detect 14 72 170 crimson_button 9 setblock 14 72 170 crimson_button 1

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 0
execute @s[tag=start_signal] ~ ~ ~ fill 13 72 169 13 76 163 air
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:cursor] sat
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:cursor] 13 102 169

# Instructions for moving the cursor
execute @s ~ ~ ~ detect 0 0 0 concrete 1 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 playsound block.itemframe.add_item @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~1 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~-1 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~ ~1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~ ~-1
execute @s ~ ~ ~ detect 0 0 0 concrete -1 execute @e[type=rwm:cursor] ~ ~ ~ detect ~ ~ ~ air 0 function api/cursor_oob

# Instruction for placing a block
execute @s ~ ~ ~ detect 0 0 0 concrete 5 playsound block.itemframe.place @a ~ ~ ~ 1 1.5 1
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ particle rwm:cursor_place ~ ~-30 ~
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @e[type=rwm:cursor] ~ ~ ~ setblock ~ ~-30 ~ gold_block

# Code stops running
scoreboard players set @s var2 0
execute @s ~ ~ ~ detect 13 72 169 gold_block 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 72 168 gold_block 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 72 167 gold_block 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 72 166 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 72 165 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 72 164 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 72 163 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 73 169 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 73 168 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 73 167 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 73 166 gold_block 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 73 165 gold_block 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 73 164 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 73 163 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 74 169 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 74 168 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 74 167 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 74 166 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 74 165 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 74 164 gold_block 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 74 163 gold_block 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 75 169 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 75 168 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 75 167 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 75 166 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 75 165 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 75 164 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 75 163 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 76 169 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 76 168 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 76 167 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 76 166 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 76 165 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 76 164 air 0 scoreboard players add @s var2 1
execute @s ~ ~ ~ detect 13 76 163 air 0 scoreboard players add @s var2 1
execute @s[tag=end_signal,scores={address=30100}] ~ ~ ~ scoreboard players set @s var1 1
execute @s[tag=end_signal,scores={address=30100}] ~ ~ ~ tp @e[type=rwm:cursor] 13 102 169
execute @s[tag=end_signal,scores={address=30100}] ~ ~ ~ event entity @e[type=rwm:cursor] sat

# Region detect for next state
execute @s[x=10,y=75,z=160,dx=3,dy=3,dz=3,scores={address=30100}] ~ ~ ~ scoreboard players add @s address 1

execute @s[scores={var1=1,second=0}] ~ ~ ~ particle rwm:guide 16 71 169
execute @s[scores={var1=1,second=0}] ~ ~ ~ particle rwm:guide 15 71 170
execute @s[scores={var1=1,second=0}] ~ ~ ~ particle rwm:guide 14 72 170
execute @s[scores={var1=1,second=0}] ~ ~ ~ particle rwm:guide 13 72 170
execute @s[scores={var1=1,second=0}] ~ ~ ~ particle rwm:guide 13 75 162
execute @s[scores={var1=1,second=0}] ~ ~ ~ particle rwm:guide 12 75 161
execute @s[scores={var1=1,second=0}] ~ ~ ~ particle rwm:guide 11 75 161

execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 72 169 gold_block 0 particle rwm:guide 13 73 169
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 72 168 gold_block 0 particle rwm:guide 13 73 168
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 72 167 gold_block 0 particle rwm:guide 13 73 167
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 72 166 gold_block 0 particle rwm:guide 13 73 166
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 72 165 gold_block 0 particle rwm:guide 13 73 165
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 72 164 gold_block 0 particle rwm:guide 13 73 164
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 72 163 gold_block 0 particle rwm:guide 13 73 163

execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 73 169 gold_block 0 particle rwm:guide 13 74 169
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 73 168 gold_block 0 particle rwm:guide 13 74 168
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 73 167 gold_block 0 particle rwm:guide 13 74 167
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 73 166 gold_block 0 particle rwm:guide 13 74 166
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 73 165 gold_block 0 particle rwm:guide 13 74 165
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 73 164 gold_block 0 particle rwm:guide 13 74 164
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 73 163 gold_block 0 particle rwm:guide 13 74 163

execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 74 169 gold_block 0 particle rwm:guide 13 75 169
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 74 168 gold_block 0 particle rwm:guide 13 75 168
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 74 167 gold_block 0 particle rwm:guide 13 75 167
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 74 166 gold_block 0 particle rwm:guide 13 75 166
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 74 165 gold_block 0 particle rwm:guide 13 75 165
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 74 164 gold_block 0 particle rwm:guide 13 75 164
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 74 163 gold_block 0 particle rwm:guide 13 75 163

execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 75 169 gold_block 0 particle rwm:guide 13 76 169
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 75 168 gold_block 0 particle rwm:guide 13 76 168
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 75 167 gold_block 0 particle rwm:guide 13 76 167
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 75 166 gold_block 0 particle rwm:guide 13 76 166
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 75 165 gold_block 0 particle rwm:guide 13 76 165
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 75 164 gold_block 0 particle rwm:guide 13 76 164
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 75 163 gold_block 0 particle rwm:guide 13 76 163

execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 76 169 gold_block 0 particle rwm:guide 13 77 169
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 76 168 gold_block 0 particle rwm:guide 13 77 168
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 76 167 gold_block 0 particle rwm:guide 13 77 167
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 76 166 gold_block 0 particle rwm:guide 13 77 166
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 76 165 gold_block 0 particle rwm:guide 13 77 165
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 76 164 gold_block 0 particle rwm:guide 13 77 164
execute @s[scores={var1=1,second=0}] ~ ~ ~ detect 13 76 163 gold_block 0 particle rwm:guide 13 77 163

particle rwm:border_5_ud_e 12 74 169
particle rwm:border_5_ud_e 12 74 162
particle rwm:border_7_ns_e 12 77 166
particle rwm:border_7_ns_e 12 72 166

execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 72 168
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 73 168
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 72 167
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 73 167
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 72 168
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 72 167
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 72 166

execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 73 166
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 74 166
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 73 165
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 74 165
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 73 166
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 73 165
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 73 164

execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 74 164
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 75 164
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 74 163
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ns_e 13 75 163
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 74 164
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 74 163
execute @s[scores={path=1,second=0}] ~ ~ ~ particle rwm:border_1_ud_e 13 74 162