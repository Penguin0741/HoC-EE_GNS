
# Puzzle 3: Dinner Plates
# var1 - The plate current in position 1
# var2 - The plate current in position 2
# var3 - The plate current in position 3
# var4 - The plate current in position 4

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 1
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var2 2
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var3 3
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var4 4
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:plate] despawn
execute @s[tag=start_signal] ~ ~ ~ tag @e[type=rwm:plate] add old
execute @s[tag=start_signal] ~ ~ ~ execute @s 32 72 125 summon rwm:plate ~ ~ ~
execute @s[tag=start_signal] ~ ~ ~ execute @s 32 72 125 event entity @e[type=rwm:plate,c=1,tag=!old] item_0
execute @s[tag=start_signal] ~ ~ ~ execute @s 32 72 128 summon rwm:plate ~ ~ ~
execute @s[tag=start_signal] ~ ~ ~ execute @s 32 72 128 event entity @e[type=rwm:plate,c=1,tag=!old] item_1
execute @s[tag=start_signal] ~ ~ ~ execute @s 29 72 128 summon rwm:plate ~ ~ ~
execute @s[tag=start_signal] ~ ~ ~ execute @s 29 72 128 event entity @e[type=rwm:plate,c=1,tag=!old] item_2
execute @s[tag=start_signal] ~ ~ ~ execute @s 29 72 125 summon rwm:plate ~ ~ ~
execute @s[tag=start_signal] ~ ~ ~ execute @s 29 72 125 event entity @e[type=rwm:plate,c=1,tag=!old] item_3

# Swap red
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players operation @s var1 >< @s var2
execute @s ~ ~ ~ detect 0 0 0 concrete 1 tag @e[type=rwm:plate] remove posx
execute @s ~ ~ ~ detect 0 0 0 concrete 1 tag @e[type=rwm:plate] remove negx
execute @s ~ ~ ~ detect 0 0 0 concrete 1 tag @e[type=rwm:plate] remove posz
execute @s ~ ~ ~ detect 0 0 0 concrete 1 tag @e[type=rwm:plate] remove negz
execute @s ~ ~ ~ detect 0 0 0 concrete 1 tag @e[type=rwm:plate,x=32,y=72,z=125,dx=0,dy=1,dz=0] add posz
execute @s ~ ~ ~ detect 0 0 0 concrete 1 tag @e[type=rwm:plate,x=32,y=72,z=128,dx=0,dy=1,dz=0] add negz
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var5 20

# Swap yellow
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players operation @s var2 >< @s var3
execute @s ~ ~ ~ detect 0 0 0 concrete 2 tag @e[type=rwm:plate] remove posx
execute @s ~ ~ ~ detect 0 0 0 concrete 2 tag @e[type=rwm:plate] remove negx
execute @s ~ ~ ~ detect 0 0 0 concrete 2 tag @e[type=rwm:plate] remove posz
execute @s ~ ~ ~ detect 0 0 0 concrete 2 tag @e[type=rwm:plate] remove negz
execute @s ~ ~ ~ detect 0 0 0 concrete 2 tag @e[type=rwm:plate,x=29,y=72,z=128,dx=0,dy=1,dz=0] add posx
execute @s ~ ~ ~ detect 0 0 0 concrete 2 tag @e[type=rwm:plate,x=32,y=72,z=128,dx=0,dy=1,dz=0] add negx
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var5 20

# Swap blue
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players operation @s var3 >< @s var4
execute @s ~ ~ ~ detect 0 0 0 concrete 3 tag @e[type=rwm:plate] remove posx
execute @s ~ ~ ~ detect 0 0 0 concrete 3 tag @e[type=rwm:plate] remove negx
execute @s ~ ~ ~ detect 0 0 0 concrete 3 tag @e[type=rwm:plate] remove posz
execute @s ~ ~ ~ detect 0 0 0 concrete 3 tag @e[type=rwm:plate] remove negz
execute @s ~ ~ ~ detect 0 0 0 concrete 3 tag @e[type=rwm:plate,x=29,y=72,z=125,dx=0,dy=1,dz=0] add posz
execute @s ~ ~ ~ detect 0 0 0 concrete 3 tag @e[type=rwm:plate,x=29,y=72,z=128,dx=0,dy=1,dz=0] add negz
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var5 20

# Swap green
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players operation @s var4 >< @s var1
execute @s ~ ~ ~ detect 0 0 0 concrete 4 tag @e[type=rwm:plate] remove posx
execute @s ~ ~ ~ detect 0 0 0 concrete 4 tag @e[type=rwm:plate] remove negx
execute @s ~ ~ ~ detect 0 0 0 concrete 4 tag @e[type=rwm:plate] remove posz
execute @s ~ ~ ~ detect 0 0 0 concrete 4 tag @e[type=rwm:plate] remove negz
execute @s ~ ~ ~ detect 0 0 0 concrete 4 tag @e[type=rwm:plate,x=29,y=72,z=125,dx=0,dy=1,dz=0] add posx
execute @s ~ ~ ~ detect 0 0 0 concrete 4 tag @e[type=rwm:plate,x=32,y=72,z=125,dx=0,dy=1,dz=0] add negx
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var5 20

execute @s[scores={var5=9..}] ~ ~ ~ execute @e[type=rwm:plate,tag=posx] ~ ~ ~ tp @s ~0.25 ~ ~
execute @s[scores={var5=9..}] ~ ~ ~ execute @e[type=rwm:plate,tag=negx] ~ ~ ~ tp @s ~-0.25 ~ ~
execute @s[scores={var5=9..}] ~ ~ ~ execute @e[type=rwm:plate,tag=posz] ~ ~ ~ tp @s ~ ~ ~0.25
execute @s[scores={var5=9..}] ~ ~ ~ execute @e[type=rwm:plate,tag=negz] ~ ~ ~ tp @s ~ ~ ~-0.25
execute @s[scores={var5=1}] ~ ~ ~ execute @e[type=rwm:plate] ~ ~ ~ tp @s ~ ~ ~
execute @s[scores={var5=20}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 1.2 1
execute @s[scores={var5=1..}] ~ ~ ~ scoreboard players remove @s var5 1

# Code stops running
execute @s[tag=end_signal,scores={var1=2,var2=4,var3=1,var4=3}] ~ ~ ~ scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=20400}] ~ ~ ~ scoreboard players add @s address 2

execute @s[scores={var1=2,var5=0..11}] ~ ~ ~ execute @e[type=rwm:diner_creeper] ~ ~ ~ particle rwm:diner_checkmark ~ ~1.5 ~
execute @s[scores={var2=4,var5=0..11}] ~ ~ ~ execute @e[type=rwm:diner_wither_skeleton] ~ ~ ~ particle rwm:diner_checkmark ~ ~1.5 ~
execute @s[scores={var3=1,var5=0..11}] ~ ~ ~ execute @e[type=rwm:diner_zombie] ~ ~ ~ particle rwm:diner_checkmark ~ ~1.5 ~
execute @s[scores={var4=3,var5=0..11}] ~ ~ ~ execute @e[type=rwm:diner_skeleton] ~ ~ ~ particle rwm:diner_checkmark ~ ~1.5 ~