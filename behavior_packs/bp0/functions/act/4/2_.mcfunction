
# Puzzle 2: Pitfall Puzzle
# var1 - A timer for opening and closing the first pitfall
# var2 - A timer for opening and closing the second pitfall
# var3 - A timer for making name changes to the golem
# var4 - A timer for moving the golem smoothly

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var2 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var3 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var4 0
execute @s[tag=start_signal] ~ ~ ~ setblock -60 74 131 redstone_block
execute @s[tag=start_signal] ~ ~ ~ setblock -60 74 133 redstone_block
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:clay_golem] -57 75 128

# Advance forward
tag @e[type=rwm:clay_golem] add can_move
execute @e[type=rwm:clay_golem] ~ ~ ~ detect ~ ~-1 ~ air 0 tag @s remove can_move
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:clay_golem,x=-57,y=75,z=128,dx=0,dy=1,dz=5,tag=can_move] ~ ~ ~ scoreboard players set @a[tag=main_player] var4 5

execute @s[scores={var4=1..}] ~ ~ ~ execute @e[type=rwm:clay_golem] ~ ~ ~ tp @s ~ ~ ~0.2
execute @s[scores={var4=1}] ~ ~ ~ execute @e[type=rwm:clay_golem,x=-57,y=75,z=130,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @a var1 60
execute @s[scores={var4=1}] ~ ~ ~ execute @e[type=rwm:clay_golem,x=-57,y=75,z=132,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players set @a var2 60
scoreboard players remove @s[scores={var4=1..}] var4 1

# Wait
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var3 60
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s queue_tick 60

# Pitfall timings
execute @s[scores={var1=60}] ~ ~ ~ setblock -60 74 131 air
execute @s[scores={var1=1}] ~ ~ ~ setblock -60 74 131 redstone_block
execute @s[scores={var2=60}] ~ ~ ~ setblock -60 74 133 air
execute @s[scores={var2=1}] ~ ~ ~ setblock -60 74 133 redstone_block
scoreboard players remove @s[scores={var1=1..}] var1 1
scoreboard players remove @s[scores={var2=1..}] var2 1

# Waiting name changes
execute @s[scores={var3=60}] ~ ~ ~ playsound break.dirt_with_roots @a ~ ~ ~ 1 1.5 1
execute @s[scores={var3=40}] ~ ~ ~ playsound break.dirt_with_roots @a ~ ~ ~ 1 1.5 1
execute @s[scores={var3=20}] ~ ~ ~ playsound break.dirt_with_roots @a ~ ~ ~ 1 1.5 1
execute @s[scores={var3=60}] ~ ~ ~ dialogue change @e[type=rwm:clay_golem] npc.clay_golem.1
execute @s[scores={var3=40}] ~ ~ ~ dialogue change @e[type=rwm:clay_golem] npc.clay_golem.2
execute @s[scores={var3=20}] ~ ~ ~ dialogue change @e[type=rwm:clay_golem] npc.clay_golem.3
execute @s[scores={var3=1}] ~ ~ ~ dialogue change @e[type=rwm:clay_golem] npc.clay_golem.0
scoreboard players remove @s[scores={var3=1..}] var3 1

execute @s[tag=end_signal] ~ ~ ~ execute @e[type=rwm:clay_golem,x=-57,y=75,z=134,dx=0,dy=1,dz=0] ~ ~ ~ scoreboard players add @a address 1
execute @s[tag=end_signal,scores={address=40200}] ~ ~ ~ scoreboard players add @a address 2