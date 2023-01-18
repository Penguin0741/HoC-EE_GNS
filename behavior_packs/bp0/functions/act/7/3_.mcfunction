
# Puzzle 2: Door Maze Puzzle
# var1 - The color chosen on the first set of levers
# var2 - The color chosen on the second set of levers
# var3 - The color chosen on the third set of levers
# var4 - A timer for moving the enderman smoothly

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
#execute @s[tag=start_signal] ~ ~ ~ tp @e[tag=target] -128 76 73
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:enderman_butler] -128 76 73

# Move npc forward
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:enderman_butler] ~ ~ ~ detect ~ 73 ~-1 gold_block 0 scoreboard players set @a[tag=main_player] var4 110

# Move npc back
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:enderman_butler] ~ ~ ~ detect ~ 73 ~1 gold_block 0 scoreboard players set @a[tag=main_player] var4 210

# Move npc left
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:enderman_butler] ~ ~ ~ detect ~-1 73 ~ gold_block 0 scoreboard players set @a[tag=main_player] var4 310

# Move npc right
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:enderman_butler] ~ ~ ~ detect ~1 73 ~ gold_block 0 scoreboard players set @a[tag=main_player] var4 410

execute @s[scores={var4=106..110}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ tp @s ~ ~ ~-0.2
execute @s[scores={var4=100}] ~ ~ ~ scoreboard players set @s var4 0
execute @s[scores={var4=206..210}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ tp @s ~ ~ ~0.2
execute @s[scores={var4=200}] ~ ~ ~ scoreboard players set @s var4 0
execute @s[scores={var4=306..310}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ tp @s ~-0.2 ~ ~
execute @s[scores={var4=300}] ~ ~ ~ scoreboard players set @s var4 0
execute @s[scores={var4=406..410}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ tp @s ~0.2 ~ ~
execute @s[scores={var4=400}] ~ ~ ~ scoreboard players set @s var4 0
scoreboard players remove @s[scores={var4=1..}] var4 1

# Levers
execute @s[scores={var1=0}] ~ ~ ~ detect -138 83 69 lever 1 scoreboard players set @s var4 1
execute @s[scores={var1=0}] ~ ~ ~ detect -138 83 69 lever 1 setblock -138 83 68 lever 9
execute @s[scores={var1=0}] ~ ~ ~ detect -138 83 69 lever 1 scoreboard players set @s var1 1
execute @s[scores={var1=0}] ~ ~ ~ detect -138 83 68 lever 9 scoreboard players set @s var4 1
execute @s[scores={var1=0}] ~ ~ ~ detect -138 83 68 lever 9 setblock -138 83 69 lever 1
execute @s[scores={var1=0}] ~ ~ ~ detect -138 83 68 lever 9 scoreboard players set @s var1 1
execute @s[scores={var1=1}] ~ ~ ~ detect -138 83 68 lever 1 scoreboard players set @s var4 1
execute @s[scores={var1=1}] ~ ~ ~ detect -138 83 68 lever 1 setblock -138 83 69 lever 9
execute @s[scores={var1=1}] ~ ~ ~ detect -138 83 68 lever 1 scoreboard players set @s var1 0
execute @s[scores={var1=1}] ~ ~ ~ detect -138 83 69 lever 9 scoreboard players set @s var4 1
execute @s[scores={var1=1}] ~ ~ ~ detect -138 83 69 lever 9 setblock -138 83 68 lever 1
execute @s[scores={var1=1}] ~ ~ ~ detect -138 83 69 lever 9 scoreboard players set @s var1 0

execute @s[scores={var2=0}] ~ ~ ~ detect -138 83 66 lever 1 scoreboard players set @s var4 1
execute @s[scores={var2=0}] ~ ~ ~ detect -138 83 66 lever 1 setblock -138 83 65 lever 9
execute @s[scores={var2=0}] ~ ~ ~ detect -138 83 66 lever 1 scoreboard players set @s var2 1
execute @s[scores={var2=0}] ~ ~ ~ detect -138 83 65 lever 9 scoreboard players set @s var4 1
execute @s[scores={var2=0}] ~ ~ ~ detect -138 83 65 lever 9 setblock -138 83 66 lever 1
execute @s[scores={var2=0}] ~ ~ ~ detect -138 83 65 lever 9 scoreboard players set @s var2 1
execute @s[scores={var2=1}] ~ ~ ~ detect -138 83 65 lever 1 scoreboard players set @s var4 1
execute @s[scores={var2=1}] ~ ~ ~ detect -138 83 65 lever 1 setblock -138 83 66 lever 9
execute @s[scores={var2=1}] ~ ~ ~ detect -138 83 65 lever 1 scoreboard players set @s var2 0
execute @s[scores={var2=1}] ~ ~ ~ detect -138 83 66 lever 9 scoreboard players set @s var4 1
execute @s[scores={var2=1}] ~ ~ ~ detect -138 83 66 lever 9 setblock -138 83 65 lever 1
execute @s[scores={var2=1}] ~ ~ ~ detect -138 83 66 lever 9 scoreboard players set @s var2 0

execute @s[scores={var3=0}] ~ ~ ~ detect -138 83 63 lever 1 scoreboard players set @s var4 1
execute @s[scores={var3=0}] ~ ~ ~ detect -138 83 63 lever 1 setblock -138 83 62 lever 9
execute @s[scores={var3=0}] ~ ~ ~ detect -138 83 63 lever 1 scoreboard players set @s var3 1
execute @s[scores={var3=0}] ~ ~ ~ detect -138 83 62 lever 9 scoreboard players set @s var4 1
execute @s[scores={var3=0}] ~ ~ ~ detect -138 83 62 lever 9 setblock -138 83 63 lever 1
execute @s[scores={var3=0}] ~ ~ ~ detect -138 83 62 lever 9 scoreboard players set @s var3 1
execute @s[scores={var3=1}] ~ ~ ~ detect -138 83 62 lever 1 scoreboard players set @s var4 1
execute @s[scores={var3=1}] ~ ~ ~ detect -138 83 62 lever 1 setblock -138 83 63 lever 9
execute @s[scores={var3=1}] ~ ~ ~ detect -138 83 62 lever 1 scoreboard players set @s var3 0
execute @s[scores={var3=1}] ~ ~ ~ detect -138 83 63 lever 9 scoreboard players set @s var4 1
execute @s[scores={var3=1}] ~ ~ ~ detect -138 83 63 lever 9 setblock -138 83 62 lever 1
execute @s[scores={var3=1}] ~ ~ ~ detect -138 83 63 lever 9 scoreboard players set @s var3 0

# Doors
# Yellow door
execute @s[scores={var1=0,var4=1}] ~ ~ ~ setblock -128 73 66 gold_block
execute @s[scores={var1=0,var4=1}] ~ ~ ~ setblock -128 74 66 redstone_torch 0
execute @s[scores={var1=1,var4=1}] ~ ~ ~ setblock -128 73 66 air
execute @s[scores={var1=1,var4=1}] ~ ~ ~ setblock -128 74 66 air

# Magenta doors
execute @s[scores={var1=1,var4=1}] ~ ~ ~ setblock -128 73 71 gold_block
execute @s[scores={var1=1,var4=1}] ~ ~ ~ setblock -128 74 71 redstone_torch 0
execute @s[scores={var1=0,var4=1}] ~ ~ ~ setblock -128 73 71 air
execute @s[scores={var1=0,var4=1}] ~ ~ ~ setblock -128 74 71 air
execute @s[scores={var1=1,var4=1}] ~ ~ ~ setblock -126 73 64 gold_block
execute @s[scores={var1=1,var4=1}] ~ ~ ~ setblock -126 74 64 redstone_torch 0
execute @s[scores={var1=0,var4=1}] ~ ~ ~ setblock -126 73 64 air
execute @s[scores={var1=0,var4=1}] ~ ~ ~ setblock -126 74 64 air

# Red door
execute @s[scores={var2=0,var4=1}] ~ ~ ~ setblock -130 73 68 gold_block
execute @s[scores={var2=0,var4=1}] ~ ~ ~ setblock -130 74 68 redstone_torch 0
execute @s[scores={var2=1,var4=1}] ~ ~ ~ setblock -130 73 68 air
execute @s[scores={var2=1,var4=1}] ~ ~ ~ setblock -130 74 68 air

# Lime door
execute @s[scores={var2=1,var4=1}] ~ ~ ~ setblock -126 73 68 gold_block
execute @s[scores={var2=1,var4=1}] ~ ~ ~ setblock -126 74 68 redstone_torch 0
execute @s[scores={var2=0,var4=1}] ~ ~ ~ setblock -126 73 68 air
execute @s[scores={var2=0,var4=1}] ~ ~ ~ setblock -126 74 68 air

# Light blue door
execute @s[scores={var3=0,var4=1}] ~ ~ ~ setblock -128 73 61 gold_block
execute @s[scores={var3=0,var4=1}] ~ ~ ~ setblock -128 74 61 redstone_torch 0
execute @s[scores={var3=1,var4=1}] ~ ~ ~ setblock -128 73 61 air
execute @s[scores={var3=1,var4=1}] ~ ~ ~ setblock -128 74 61 air

# Orange door
execute @s[scores={var3=1,var4=1}] ~ ~ ~ setblock -130 73 64 gold_block
execute @s[scores={var3=1,var4=1}] ~ ~ ~ setblock -130 74 64 redstone_torch 0
execute @s[scores={var3=0,var4=1}] ~ ~ ~ setblock -130 73 64 air
execute @s[scores={var3=0,var4=1}] ~ ~ ~ setblock -130 74 64 air

# Code stops running
execute @s[tag=end_signal] ~ ~ ~ execute @e[type=rwm:enderman_butler,x=-129,y=76,z=58,dx=2,dy=2,dz=2] ~ ~ ~ scoreboard players add @a address 1
execute @s[tag=end_signal,scores={address=70300}] ~ ~ ~ scoreboard players add @s address 2

# Borders
particle rwm:border_7_ns_u -133 81 66
particle rwm:border_7_ns_u -124 81 66
particle rwm:border_5_ns_u -130 81 72
particle rwm:border_5_ns_u -127 81 72
particle rwm:border_5_ns_u -130 81 60
particle rwm:border_5_ns_u -127 81 60
particle rwm:border_3_ew_u -131 81 62
particle rwm:border_3_ew_u -128 81 57
particle rwm:border_3_ew_u -125 81 62
particle rwm:border_3_ew_u -125 81 69
particle rwm:border_3_ew_u -128 81 74
particle rwm:border_3_ew_u -131 81 69