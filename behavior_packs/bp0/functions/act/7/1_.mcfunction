
# Puzzle 1: Drawbridge Puzzle
# var1 - a timer for animating the enderman butler
# var2 - whether or not the butler has teleported to the orb (0=no,1=yes)
# var3 - whether or not the activity is failing due to the enderman falling in the water (0=no,1=yes)

execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

particle rwm:sparkle -115 81 58

# Code starts running
execute @s[tag=start_signal] ~ ~ ~ setblock -115 81 58 lever 3
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var1 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var2 0
execute @s[tag=start_signal] ~ ~ ~ scoreboard players set @s var3 0
execute @s[tag=start_signal] ~ ~ ~ tp @e[type=rwm:enderman_butler] -104 81 59
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:enderman_butler] arm_pose_1

# Advance npc 1 block forward
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var1 110

execute @s[scores={var1=106..110}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ tp @s[x=-117,y=81,z=59,dx=14,dy=4,dz=0] ~-0.2 ~ ~
execute @s[scores={var1=100}] ~ ~ ~ scoreboard players set @s var1 0

# Have npc teleport to orb
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s queue_tick 60
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var1 260

execute @s[scores={var1=260}] ~ ~ ~ scoreboard players set @s var2 0
execute @s[scores={var1=250}] ~ ~ ~ playsound portal.trigger @a ~ ~ ~ 1 1.5 1
execute @s[scores={var1=250}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ event entity @s arm_pose_2
execute @s[scores={var1=210..250}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ particle rwm:cast_teleport ~-1.3 ~1.3 ~0.35
execute @s[scores={var1=210..250}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ particle rwm:cast_teleport -113 81.2 59
execute @s[scores={var1=210}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ playsound mob.endermen.portal @a ~ ~ ~ 1 1 1
execute @s[scores={var1=210}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ tp @s -113 81 59
execute @s[scores={var1=210}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ event entity @s arm_pose_0
execute @s[scores={var1=210}] ~ ~ ~ scoreboard players set @s var2 1
execute @s[scores={var1=200}] ~ ~ ~ scoreboard players set @s var1 0

# Have npc pull lever
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s queue_tick 100
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @a var1 400

execute @s[scores={var1=350..400}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ tp @s ~ ~ ~ 180 0
execute @s[scores={var1=350}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ event entity @s arm_pose_2
execute @s[scores={var1=350}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ detect ~ ~ ~-1 lever 3 execute @s ~ ~ ~ detect -115 82 57 redstone_lamp 0 playsound beacon.activate @a ~ ~ ~ 1 1 1
execute @s[scores={var1=350}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ detect ~ ~ ~-1 lever 3 execute @s ~ ~ ~ detect -115 82 57 redstone_lamp 0 setblock ~ ~ ~-1 lever 11
execute @s[scores={var1=350}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ detect ~ ~ ~-1 lever 11 execute @s ~ ~ ~ detect -115 82 57 lit_redstone_lamp 0 playsound beacon.deactivate @a ~ ~ ~ 1 1 1
execute @s[scores={var1=350}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ detect ~ ~ ~-1 lever 11 execute @s ~ ~ ~ detect -115 82 57 lit_redstone_lamp 0 setblock ~ ~ ~-1 lever 3
execute @s[scores={var1=330,var2=0}] ~ ~ ~ event entity @e[type=rwm:enderman_butler] arm_pose_1
execute @s[scores={var1=330,var2=1}] ~ ~ ~ event entity @e[type=rwm:enderman_butler] arm_pose_0
execute @s[scores={var1=300..330}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ tp @s ~ ~ ~ 90 0
execute @s[scores={var1=300}] ~ ~ ~ scoreboard players set @s var1 0

scoreboard players remove @s[scores={var1=1..999}] var1 1

#execute @s[scores={var2=0,second=0}] ~ ~ ~ particle rwm:cast_orb -113 81.2 59
execute @s[scores={var2=0,var1=0,second=0}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ particle rwm:cast_prepare ~-0.55 ~0.75 ~0.35
execute @s[scores={var2=0,var1=0,second=5}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ particle rwm:cast_prepare ~-0.55 ~0.75 ~0.35
execute @s[scores={var2=0,var1=0,second=10}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ particle rwm:cast_prepare ~-0.55 ~0.75 ~0.35
execute @s[scores={var2=0,var1=0,second=15}] ~ ~ ~ execute @e[type=rwm:enderman_butler] ~ ~ ~ particle rwm:cast_prepare ~-0.55 ~0.75 ~0.35

# Fail if the enderman falls in the water
execute @e[type=rwm:enderman_butler,x=-112,y=78,z=59,dx=6,dy=0,dz=0] ~ ~ ~ scoreboard players set @a[tag=main_player] var3 1
execute @e[type=rwm:enderman_butler,x=-112,y=78,z=59,dx=6,dy=0,dz=0] ~ ~ ~ scoreboard players set @a[tag=main_player] address 70102

# Code stops running
execute @s[tag=end_signal] ~ ~ ~ detect -115 82 57 lit_redstone_lamp 0 scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=70100}] ~ ~ ~ scoreboard players add @s address 2

