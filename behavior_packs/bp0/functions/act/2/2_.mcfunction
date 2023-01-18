
# Puzzle 2: Feed the House
# var1 - A looping timer for summoning chefs riding platters
# var2 - The amount of apples fed to the house
# var3 - The amount of salmon fed to the house
# var4 - The amount of mushroom stew fed to the house

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

scoreboard players add @s var1 1
execute @s[scores={var1=1}] ~ ~ ~ playsound minecart.base @a 11 73 127 0.3 1 0
execute @s[scores={var1=36}] ~ ~ ~ playsound minecart.base @a 11 73 127 0.3 1 0
execute @s[scores={var1=71}] ~ ~ ~ playsound minecart.base @a 11 73 127 0.3 1 0
execute @s[scores={var1=106}] ~ ~ ~ playsound minecart.base @a 11 73 127 0.3 1 0
execute @s[scores={var1=141}] ~ ~ ~ playsound minecart.base @a 11 73 127 0.3 1 0
execute @s[scores={var1=11}] ~ ~ ~ summon rwm:3_platter 13 72 135
execute @s[scores={var1=11}] ~ ~ ~ summon rwm:zombie_chef_sitting 13 72 134 item_5
execute @s[scores={var1=11}] ~ ~ ~ summon rwm:zombie_chef_sitting 13 72 135 item_5
execute @s[scores={var1=11}] ~ ~ ~ summon rwm:zombie_chef_sitting 13 72 136 item_5
execute @s[scores={var1=61}] ~ ~ ~ summon rwm:4_platter 11 73 135
execute @s[scores={var1=61}] ~ ~ ~ summon rwm:zombie_chef_sitting 11 73 133 item_6
execute @s[scores={var1=61}] ~ ~ ~ summon rwm:zombie_chef_sitting 11 73 134 item_6
execute @s[scores={var1=61}] ~ ~ ~ summon rwm:zombie_chef_sitting 11 73 135 item_6
execute @s[scores={var1=61}] ~ ~ ~ summon rwm:zombie_chef_sitting 11 73 136 item_6
execute @s[scores={var1=111}] ~ ~ ~ summon rwm:2_platter 12 75 135
execute @s[scores={var1=111}] ~ ~ ~ summon rwm:zombie_chef_sitting 12 75 135 item_7
execute @s[scores={var1=111}] ~ ~ ~ summon rwm:zombie_chef_sitting 12 75 136 item_7
execute @s[scores={var1=180}] ~ ~ ~ scoreboard players set @s var1 0

event entity @e[type=minecart,x=10,y=71,z=120,dx=4,dy=4,dz=1] despawn
event entity @e[type=rwm:zombie_chef,x=10,y=71,z=120,dx=4,dy=4,dz=1] despawn

# Instruction for resetting
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:1_platter] despawn
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:2_platter] despawn
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:3_platter] despawn
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:4_platter] despawn
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:5_platter] despawn
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:zombie_chef_sitting] despawn
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 -1000
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var2 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var3 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var4 0
execute @s[tag=start_signal] ~ ~ ~ structure load "room2:chompy0" 4 70 123
execute @s[tag=start_signal] ~ ~ ~ kill @e[type=item]

# Dropping item 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 structure load "room2:apple" 7 73 127
execute @s ~ ~ ~ detect 0 0 0 concrete 1 particle rwm:sparkle 7 73 127
execute @s ~ ~ ~ detect 0 0 0 concrete 1 particle rwm:sparkle 7 73 127
execute @s ~ ~ ~ detect 0 0 0 concrete 1 particle rwm:sparkle 7 73 127
execute @s[scores={var2=0}] ~ ~ ~ detect 0 0 0 concrete 1 playsound random.pop @a ~ ~ ~ 1 0.7 1
execute @s[scores={var2=1}] ~ ~ ~ detect 0 0 0 concrete 1 playsound random.pop @a ~ ~ ~ 1 0.8 1
execute @s[scores={var2=2}] ~ ~ ~ detect 0 0 0 concrete 1 playsound random.pop @a ~ ~ ~ 1 0.9 1
execute @s[scores={var2=3}] ~ ~ ~ detect 0 0 0 concrete 1 playsound random.pop @a ~ ~ ~ 1 1.0 1
execute @s[scores={var2=4}] ~ ~ ~ detect 0 0 0 concrete 1 playsound random.pop @a ~ ~ ~ 1 1.1 1
execute @s[scores={var2=5..}] ~ ~ ~ detect 0 0 0 concrete 1 playsound random.pop @a ~ ~ ~ 1 1.2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players add @s var2 1

# Dropping item 2
execute @s ~ ~ ~ detect 0 0 0 concrete 2 structure load "room2:raw_salmon" 7 73 127
execute @s ~ ~ ~ detect 0 0 0 concrete 2 particle rwm:sparkle 7 73 127
execute @s ~ ~ ~ detect 0 0 0 concrete 2 particle rwm:sparkle 7 73 127
execute @s ~ ~ ~ detect 0 0 0 concrete 2 particle rwm:sparkle 7 73 127
execute @s[scores={var3=0}] ~ ~ ~ detect 0 0 0 concrete 2 playsound random.pop @a ~ ~ ~ 1 0.7 1
execute @s[scores={var3=1}] ~ ~ ~ detect 0 0 0 concrete 2 playsound random.pop @a ~ ~ ~ 1 0.8 1
execute @s[scores={var3=2}] ~ ~ ~ detect 0 0 0 concrete 2 playsound random.pop @a ~ ~ ~ 1 0.9 1
execute @s[scores={var3=3}] ~ ~ ~ detect 0 0 0 concrete 2 playsound random.pop @a ~ ~ ~ 1 1.0 1
execute @s[scores={var3=4}] ~ ~ ~ detect 0 0 0 concrete 2 playsound random.pop @a ~ ~ ~ 1 1.1 1
execute @s[scores={var3=5..}] ~ ~ ~ detect 0 0 0 concrete 2 playsound random.pop @a ~ ~ ~ 1 1.2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players add @s var3 1

# Dropping item 3
execute @s ~ ~ ~ detect 0 0 0 concrete 3 structure load "room2:mushroom_soup" 7 73 127
execute @s ~ ~ ~ detect 0 0 0 concrete 3 particle rwm:sparkle 7 73 127
execute @s ~ ~ ~ detect 0 0 0 concrete 3 particle rwm:sparkle 7 73 127
execute @s ~ ~ ~ detect 0 0 0 concrete 3 particle rwm:sparkle 7 73 127
execute @s[scores={var4=0}] ~ ~ ~ detect 0 0 0 concrete 3 playsound random.pop @a ~ ~ ~ 1 0.7 1
execute @s[scores={var4=1}] ~ ~ ~ detect 0 0 0 concrete 3 playsound random.pop @a ~ ~ ~ 1 0.8 1
execute @s[scores={var4=2}] ~ ~ ~ detect 0 0 0 concrete 3 playsound random.pop @a ~ ~ ~ 1 0.9 1
execute @s[scores={var4=3}] ~ ~ ~ detect 0 0 0 concrete 3 playsound random.pop @a ~ ~ ~ 1 1.0 1
execute @s[scores={var4=4}] ~ ~ ~ detect 0 0 0 concrete 3 playsound random.pop @a ~ ~ ~ 1 1.1 1
execute @s[scores={var4=5..}] ~ ~ ~ detect 0 0 0 concrete 3 playsound random.pop @a ~ ~ ~ 1 1.2 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players add @s var4 1

# Code stops running
execute @s[tag=end_signal,scores={var2=3,var3=4,var4=2}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=20200}] ~ ~ ~ scoreboard players add @s address 2