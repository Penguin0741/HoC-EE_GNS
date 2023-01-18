
execute @s[scores={code_state=0},tag=!debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.0b"}]}
execute @s[scores={code_state=1..},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.code.1"}]}
execute @s[scores={code_state=0},tag=!debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0"}]}
execute @s[scores={code_state=0},tag=debug_run,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.0b"}]}
execute @s[scores={code_state=1..},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.code.1"}]}

# Code starts running
execute @s[tag=start_signal,scores={boss_activity=1}] ~ ~ ~ setblock 168 52 -551 lever 2
execute @s[tag=start_signal,scores={boss_activity=2}] ~ ~ ~ setblock 191 47 -630 lever 1
execute @s[tag=start_signal,scores={boss_activity=3}] ~ ~ ~ setblock 259 46 -630 lever 2
execute @s[tag=start_signal,scores={boss_activity=4}] ~ ~ ~ setblock 246 45 -541 lever 3
execute @s[tag=start_signal,scores={boss_activity=1}] ~ ~ ~ tp @c 167 58 -551 270 0
execute @s[tag=start_signal,scores={boss_activity=2}] ~ ~ ~ tp @c 194 47 -632 90 0
execute @s[tag=start_signal,scores={boss_activity=3}] ~ ~ ~ tp @c 256 46 -632 270 0
execute @s[tag=start_signal,scores={boss_activity=4}] ~ ~ ~ tp @c 246 46 -528 180 0

# Agent pulling lever
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @c[x=167,y=51,z=-551,dx=0,dy=1,dz=0] ~ ~ ~ setblock 168 52 -551 lever 10
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @c[x=192,y=46,z=-630,dx=0,dy=1,dz=0] ~ ~ ~ setblock 191 47 -630 lever 9
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @c[x=258,y=45,z=-630,dx=0,dy=1,dz=0] ~ ~ ~ setblock 259 46 -630 lever 10
execute @s ~ ~ ~ detect 0 0 0 concrete 5 execute @c[x=246,y=44,z=-540,dx=0,dy=1,dz=0] ~ ~ ~ setblock 246 45 -541 lever 11

# Code stops running
execute @s[tag=end_signal,scores={boss_activity=1}] ~ ~ ~ detect 168 52 -551 lever 10 scoreboard players add @s address 1
execute @s[tag=end_signal,scores={boss_activity=2}] ~ ~ ~ detect 191 47 -630 lever 9 scoreboard players add @s address 1
execute @s[tag=end_signal,scores={boss_activity=3}] ~ ~ ~ detect 259 46 -630 lever 10 scoreboard players add @s address 1
execute @s[tag=end_signal,scores={boss_activity=4}] ~ ~ ~ detect 246 45 -541 lever 11 scoreboard players add @s address 1
execute @s[tag=end_signal,scores={address=110400}] ~ ~ ~ scoreboard players add @s address 2

# Clear activities if the player returns to the main room
# execute @s[tag=!cannon_1,x=204,y=42,z=-567,dx=0,dy=4,dz=4] ~ ~ ~ scoreboard players set @s boss_activity 0
# execute @s[tag=!cannon_1,x=200,y=42,z=-567,dx=4,dy=4,dz=0] ~ ~ ~ scoreboard players set @s boss_activity 0
# execute @s[tag=!cannon_2,x=204,y=42,z=-613,dx=0,dy=4,dz=4] ~ ~ ~ scoreboard players set @s boss_activity 0
# execute @s[tag=!cannon_2,x=200,y=42,z=-609,dx=4,dy=4,dz=0] ~ ~ ~ scoreboard players set @s boss_activity 0
# execute @s[tag=!cannon_3,x=246,y=42,z=-613,dx=0,dy=4,dz=4] ~ ~ ~ scoreboard players set @s boss_activity 0
# execute @s[tag=!cannon_3,x=246,y=42,z=-609,dx=4,dy=4,dz=0] ~ ~ ~ scoreboard players set @s boss_activity 0
# execute @s[tag=!cannon_4,x=246,y=42,z=-567,dx=0,dy=4,dz=4] ~ ~ ~ scoreboard players set @s boss_activity 0
# execute @s[tag=!cannon_4,x=246,y=42,z=-567,dx=4,dy=4,dz=0] ~ ~ ~ scoreboard players set @s boss_activity 0
# execute @s[scores={boss_activity=0}] ~ ~ ~ function act/11/3