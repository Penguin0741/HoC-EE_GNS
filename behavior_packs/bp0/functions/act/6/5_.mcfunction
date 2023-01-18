
# Puzzle 3: Mob Sorting Puzzle
# var1 - The track to send the mob on (stored on the minecart the mob is in) & the failure visual to display (stored on the player)
# var2 - Victory condition, keeping track of how many mobs have been sent the correct way (-1 if a mob is sent the wrong direction)
# var3 - A 100-tick timeout after the end signal has been sent, acting as a buffer to allow the last mob to the end of the tracks

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
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var2 0
execute @s[tag=start_signal] ~ ~ ~ fill -43 75 190 -41 75 192 air
execute @s[tag=start_signal] ~ ~ ~ structure load "room6:straight_rails" -43 75 190

# Send down zombie track
execute @s ~ ~ ~ detect 0 0 0 concrete 1 event entity @e[type=minecart,c=1,scores={var1=0}] add_movement
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @e[type=minecart,c=1,scores={var1=0}] var1 1
execute @s[scores={var2=5..6}] ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players add @s var2 1
execute @s[scores={var2=2..4}] ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var2 -1
execute @s[scores={var2=1}] ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players add @s var2 1
execute @s[scores={var2=0}] ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var2 -1

# Send down skeleton track
execute @s ~ ~ ~ detect 0 0 0 concrete 2 event entity @e[type=minecart,c=1,scores={var1=0}] add_movement
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @e[type=minecart,c=1,scores={var1=0}] var1 2
execute @s[scores={var2=3..6}] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var2 -1
execute @s[scores={var2=2}] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players add @s var2 1
execute @s[scores={var2=1}] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var2 -1
execute @s[scores={var2=0}] ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players add @s var2 1

# Send down creeper track
execute @s ~ ~ ~ detect 0 0 0 concrete 3 event entity @e[type=minecart,c=1,scores={var1=0}] add_movement
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @e[type=minecart,c=1,scores={var1=0}] var1 3
execute @s[scores={var2=5..6}] ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var2 -1
execute @s[scores={var2=3..4}] ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players add @s var2 1
execute @s[scores={var2=0..2}] ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var2 -1

# Switch track as mobs pass through
execute @e[type=minecart,x=-42,y=75,z=190,r=1,scores={var1=1..3}] ~ ~ ~ fill -43 75 190 -41 75 192 air
execute @e[type=minecart,x=-42,y=75,z=190,r=1,scores={var1=1}] ~ ~ ~ structure load "room6:left_rails" -43 75 190
execute @e[type=minecart,x=-42,y=75,z=190,r=1,scores={var1=2}] ~ ~ ~ structure load "room6:straight_rails" -43 75 190
execute @e[type=minecart,x=-42,y=75,z=190,r=1,scores={var1=3}] ~ ~ ~ structure load "room6:right_rails" -43 75 190
execute @e[type=minecart,x=-42,y=75,z=190,r=1,scores={var1=1..3}] ~ ~ ~ scoreboard players set @s var1 4

# Sound effects for incorrect mobs
execute @e[type=rwm:diner_skeleton,x=-33,y=75,z=202,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @a var1 1
execute @e[type=rwm:diner_creeper,x=-33,y=75,z=202,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @a var1 1

execute @e[type=rwm:diner_zombie,x=-42,y=75,z=206,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @a var1 2
execute @e[type=rwm:diner_creeper,x=-42,y=75,z=206,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @a var1 2

execute @e[type=rwm:diner_zombie,x=-51,y=77,z=207,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @a var1 3
execute @e[type=rwm:diner_skeleton,x=-51,y=77,z=207,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @a var1 3

execute @s[scores={var1=1,var2=-1}] ~ ~ ~ playsound mob.zombie.hurt @a ~ ~ ~ 1 1 1
execute @s[scores={var1=1,var2=-1}] ~ ~ ~ particle rwm:medium_barrier -31.1 78 197
execute @s[scores={var1=1,var2=-1}] ~ ~ ~ particle rwm:medium_barrier -35.1 78 197
execute @s[scores={var1=2,var2=-1}] ~ ~ ~ playsound mob.skeleton.hurt @a ~ ~ ~ 1 1 1
execute @s[scores={var1=2,var2=-1}] ~ ~ ~ particle rwm:medium_barrier -40.1 78 202
execute @s[scores={var1=2,var2=-1}] ~ ~ ~ particle rwm:medium_barrier -44.1 78 202
execute @s[scores={var1=3,var2=-1}] ~ ~ ~ playsound mob.creeper.say @a ~ ~ ~ 1 1 1
execute @s[scores={var1=3,var2=-1}] ~ ~ ~ particle rwm:medium_barrier -49.1 80.5 202
execute @s[scores={var1=3,var2=-1}] ~ ~ ~ particle rwm:medium_barrier -53.1 80.5 202
execute @s[scores={var1=1..}] ~ ~ ~ scoreboard players set @s var1 0

# Despawn entities in tunnels
execute @e[type=!player,x=-33,y=75,z=202,dx=0,dy=1,dz=0] ~ ~ ~ event entity @s despawn
execute @e[type=!player,x=-42,y=75,z=206,dx=0,dy=1,dz=0] ~ ~ ~ event entity @s despawn
execute @e[type=!player,x=-51,y=77,z=207,dx=0,dy=1,dz=0] ~ ~ ~ event entity @s despawn

# Activity 3 win condition
execute @s[tag=end_signal] ~ ~ ~ scoreboard players set @s var3 100
scoreboard players remove @s[scores={var3=1..}] var3 1
execute @s[scores={var2=7,var3=1}] ~ ~ ~ scoreboard players add @s address 1
execute @s[scores={address=60500,var3=1}] ~ ~ ~ scoreboard players add @s address 2