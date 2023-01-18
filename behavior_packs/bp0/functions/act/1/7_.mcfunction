
# Puzzle 4: Lever Puzzle
# var1 - Timer between lever pulls
# var2 - Current amount of levers pulled
# var3 - Signal to have armor npc attempt to pull a lever
# var4 - Timer for light pattern display

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ fill 11 75 68 23 74 68 air 0 replace redstone_block
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var4 10000
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:armor_npc,tag=main_armor] 15 71 70
execute @s[tag=start_signal,scores={var1=10000}] ~ ~ ~ scoreboard players set @s var1 10

# Pull orange lever
execute @s ~ ~ ~ detect 0 0 0 concrete 1 playsound mob.shulker.teleport @a ~ ~ ~ 0.3 1.3 0.3
execute @s ~ ~ ~ detect 0 0 0 concrete 1 playsound random.anvil_land @a ~ ~ ~ 0.3 1.3 0.3
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ particle rwm:teleport_start ~ ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete 1 tp @e[type=rwm:armor_npc,tag=main_armor] 21 71 71
execute @s ~ ~ ~ detect 0 0 0 concrete 1 event entity @e[type=rwm:armor_npc,tag=main_armor] rot180
execute @s ~ ~ ~ detect 0 0 0 concrete 1 execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ particle rwm:teleport_end ~ ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var3 1

# Pull magenta lever
execute @s ~ ~ ~ detect 0 0 0 concrete 2 playsound mob.shulker.teleport @a ~ ~ ~ 0.3 1.1 0.3
execute @s ~ ~ ~ detect 0 0 0 concrete 2 playsound random.anvil_land @a ~ ~ ~ 0.3 1.1 0.3
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ particle rwm:teleport_start ~ ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete 2 tp @e[type=rwm:armor_npc,tag=main_armor] 23 71 71
execute @s ~ ~ ~ detect 0 0 0 concrete 2 event entity @e[type=rwm:armor_npc,tag=main_armor] rot180
execute @s ~ ~ ~ detect 0 0 0 concrete 2 execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ particle rwm:teleport_end ~ ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var3 1

# Pull light blue lever
execute @s ~ ~ ~ detect 0 0 0 concrete 3 playsound mob.shulker.teleport @a ~ ~ ~ 0.3 1 0.3
execute @s ~ ~ ~ detect 0 0 0 concrete 3 playsound random.anvil_land @a ~ ~ ~ 0.3 1 0.3
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ particle rwm:teleport_start ~ ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete 3 tp @e[type=rwm:armor_npc,tag=main_armor] 13 71 71
execute @s ~ ~ ~ detect 0 0 0 concrete 3 event entity @e[type=rwm:armor_npc,tag=main_armor] rot180
execute @s ~ ~ ~ detect 0 0 0 concrete 3 execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ particle rwm:teleport_end ~ ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var3 1

# Pull yellow lever
execute @s ~ ~ ~ detect 0 0 0 concrete 4 playsound mob.shulker.teleport @a ~ ~ ~ 0.3 1.2 0.3
execute @s ~ ~ ~ detect 0 0 0 concrete 4 playsound random.anvil_land @a ~ ~ ~ 0.3 1.2 0.3
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ particle rwm:teleport_start ~ ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete 4 tp @e[type=rwm:armor_npc,tag=main_armor] 11 71 71
execute @s ~ ~ ~ detect 0 0 0 concrete 4 event entity @e[type=rwm:armor_npc,tag=main_armor] rot180
execute @s ~ ~ ~ detect 0 0 0 concrete 4 execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ particle rwm:teleport_end ~ ~ ~
execute @s ~ ~ ~ detect 0 0 0 concrete 4 scoreboard players set @s var3 1

# Activate lights sequence
execute @s[scores={var3=1,var4=10000}] ~ ~ ~ scoreboard players set @s var4 150

# If the entity is teleported to a location where the lever is unreachable or has already been pulled, unpause the lever timeout
execute @s[scores={var3=1}] ~ ~ ~ execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ detect ~ ~1 ~-2 stained_glass_pane -1 playsound random.glass @a ~ ~ ~ 1 0.7 1
execute @s[scores={var3=1,var1=10000}] ~ ~ ~ execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ detect ~ ~1 ~-2 stained_glass_pane -1 scoreboard players set @a var1 10
execute @s[scores={var3=1,var1=10000}] ~ ~ ~ execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ detect ~ ~1 ~-3 lever 13 scoreboard players set @a var1 10

# If the entity can reach the lever and the lever hasn't been pulled, pull the lever
# Also pause the lever timeout by setting it to 10000, just in case the next makecode packet takes longer than 2 seconds to arrive
execute @s[scores={var3=1}] ~ ~ ~ execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ detect ~ ~1 ~-2 air 0 execute @s ~ ~ ~ detect ~ ~1 ~-3 lever 5 scoreboard players set @a var1 10000
execute @s[scores={var3=1}] ~ ~ ~ execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ detect ~ ~1 ~-2 air 0 execute @s ~ ~ ~ detect ~ ~1 ~-3 lever 5 setblock ~ ~1 ~-3 lever 13
execute @s[scores={var3=1}] ~ ~ ~ playanimation @e[type=rwm:armor_npc,tag=main_armor] flick
scoreboard players set @s var3 0

# Code stops running
execute @s[tag=end_signal] ~ ~ ~ scoreboard players set @s var4 180
execute @s[tag=end_signal] ~ ~ ~ playsound random.anvil_land @a ~ ~ ~ 0.3 0.7 0.3
execute @s[tag=end_signal] ~ ~ ~ playsound mob.shulker.teleport @a ~ ~ ~ 0.3 0.7 0.3
execute @s[tag=end_signal] ~ ~ ~ execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ particle rwm:teleport_start ~ ~ ~
execute @s[tag=end_signal] ~ ~ ~ tp @e[type=rwm:armor_npc,tag=main_armor] 15 71 70 0 0
execute @s[tag=end_signal] ~ ~ ~ event entity @e[type=rwm:armor_npc,tag=main_armor] rot0
execute @s[tag=end_signal] ~ ~ ~ execute @e[type=rwm:armor_npc,tag=main_armor] ~ ~ ~ particle rwm:teleport_end ~ ~ ~
execute @s[tag=end_signal,scores={var1=10000}] ~ ~ ~ scoreboard players set @s var1 10

execute @s[scores={var2=0}] ~ ~ ~ particle rwm:sparkle 13 72 70
execute @s[scores={var2=1}] ~ ~ ~ particle rwm:sparkle 23 72 70
execute @s[scores={var2=2}] ~ ~ ~ particle rwm:sparkle 11 72 70
execute @s[scores={var2=3}] ~ ~ ~ particle rwm:sparkle 21 72 70

execute @s[scores={var1=1}] ~ ~ ~ playsound block.false_permissions @a ~ ~ ~ 1 1 1
execute @s[scores={var1=1}] ~ ~ ~ particle rwm:barrier 11 72 70
execute @s[scores={var1=1}] ~ ~ ~ particle rwm:barrier 13 72 70
execute @s[scores={var1=1}] ~ ~ ~ particle rwm:barrier 21 72 70
execute @s[scores={var1=1}] ~ ~ ~ particle rwm:barrier 23 72 70
execute @s[scores={var1=1}] ~ ~ ~ setblock 13 72 68 lever 5
execute @s[scores={var1=1}] ~ ~ ~ setblock 23 72 68 lever 5
execute @s[scores={var1=1}] ~ ~ ~ setblock 11 72 68 lever 5
execute @s[scores={var1=1}] ~ ~ ~ setblock 23 72 69 minecraft:stained_glass_pane 7
execute @s[scores={var1=1}] ~ ~ ~ setblock 11 72 69 minecraft:stained_glass_pane 7
execute @s[scores={var1=1}] ~ ~ ~ setblock 21 72 69 minecraft:stained_glass_pane 7
execute @s[scores={var1=1}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 1.5 1
execute @s[scores={var1=1}] ~ ~ ~ scoreboard players set @s var2 0
execute @s[scores={var1=1..9999}] ~ ~ ~ scoreboard players remove @s var1 1

execute @s[scores={var2=0}] ~ ~ ~ detect 13 72 68 lever 13 setblock 23 72 69 air
execute @s[scores={var2=0}] ~ ~ ~ detect 13 72 68 lever 13 playsound block.loom.use @a ~ ~ ~ 1 1.5 1
execute @s[scores={var2=0,var1=0..9999}] ~ ~ ~ detect 13 72 68 lever 13 scoreboard players set @s var1 40
execute @s[scores={var2=0}] ~ ~ ~ detect 13 72 68 lever 13 scoreboard players set @s var2 1

execute @s[scores={var2=1}] ~ ~ ~ detect 23 72 68 lever 13 setblock 11 72 69 air
execute @s[scores={var2=1}] ~ ~ ~ detect 23 72 68 lever 13 playsound block.loom.use @a ~ ~ ~ 1 1.5 1
execute @s[scores={var2=1,var1=0..9999}] ~ ~ ~ detect 23 72 68 lever 13 scoreboard players set @s var1 40
execute @s[scores={var2=1}] ~ ~ ~ detect 23 72 68 lever 13 scoreboard players set @s var2 2

execute @s[scores={var2=2}] ~ ~ ~ detect 11 72 68 lever 13 setblock 21 72 69 air
execute @s[scores={var2=2}] ~ ~ ~ detect 11 72 68 lever 13 playsound block.loom.use @a ~ ~ ~ 1 1.5 1
execute @s[scores={var2=2,var1=0..9999}] ~ ~ ~ detect 11 72 68 lever 13 scoreboard players set @s var1 40
execute @s[scores={var2=2}] ~ ~ ~ detect 11 72 68 lever 13 scoreboard players set @s var2 3

execute @s[scores={var2=3}] ~ ~ ~ detect 21 72 68 lever 13 scoreboard players add @s address 1

execute @s[scores={var4=150}] ~ ~ ~ particle rwm:simon_lightup 13 75 69
execute @s[scores={var4=150}] ~ ~ ~ fill 13 74 68 13 75 68 redstone_block
execute @s[scores={var4=140}] ~ ~ ~ fill 13 74 68 13 75 68 air
execute @s[scores={var4=120}] ~ ~ ~ particle rwm:simon_lightup 23 75 69
execute @s[scores={var4=120}] ~ ~ ~ fill 23 74 68 23 75 68 redstone_block
execute @s[scores={var4=110}] ~ ~ ~ fill 23 74 68 23 75 68 air
execute @s[scores={var4=90}] ~ ~ ~ particle rwm:simon_lightup 11 75 69
execute @s[scores={var4=90}] ~ ~ ~ fill 11 74 68 11 75 68 redstone_block
execute @s[scores={var4=80}] ~ ~ ~ fill 11 74 68 11 75 68 air
execute @s[scores={var4=60}] ~ ~ ~ particle rwm:simon_lightup 21 75 69
execute @s[scores={var4=60}] ~ ~ ~ fill 21 74 68 21 75 68 redstone_block
execute @s[scores={var4=50}] ~ ~ ~ fill 21 74 68 21 75 68 air
scoreboard players remove @s[scores={var4=1..9999}] var4 1
execute @s[scores={var4=0}] ~ ~ ~ scoreboard players set @s var4 150