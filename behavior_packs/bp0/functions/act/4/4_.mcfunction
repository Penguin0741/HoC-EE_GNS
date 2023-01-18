
# Puzzle 3: Potion Puzzle
# var1 - Timer for animating the ingredients dropping
# var2 - Victory tracker
# var3 - The number of potion ingredients dropped (for fail condition)

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
execute @s[tag=start_signal] ~ ~ ~ fill -40 69 120 -32 72 132 stained_glass 11 replace stained_glass
execute @s[tag=start_signal] ~ ~ ~ fill -40 69 120 -32 72 132 concrete 11 replace concrete
execute @s[tag=start_signal] ~ ~ ~ event entity @e[type=rwm:potion_ingredient] despawn

# Drop ingredient 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 playsound random.click @a ~ ~ ~ 1 1 1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 summon rwm:potion_ingredient -35 80 130 item_1
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players set @s var1 40
execute @s ~ ~ ~ detect 0 0 0 concrete 1 scoreboard players add @s var3 1
execute @s[scores={var2=0}] ~ ~ ~ detect 0 0 0 concrete 1 tag @s add correct

# Drop ingredient 2
execute @s ~ ~ ~ detect 0 0 0 concrete 2 playsound random.click @a ~ ~ ~ 1 1 1
execute @s ~ ~ ~ detect 0 0 0 concrete 2 summon rwm:potion_ingredient -35 80 122 item_2
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players set @s var1 40
execute @s ~ ~ ~ detect 0 0 0 concrete 2 scoreboard players add @s var3 1
execute @s[scores={var2=1}] ~ ~ ~ detect 0 0 0 concrete 2 tag @s add correct

# Drop ingredient 3
execute @s ~ ~ ~ detect 0 0 0 concrete 3 playsound random.click @a ~ ~ ~ 1 1 1
execute @s ~ ~ ~ detect 0 0 0 concrete 3 summon rwm:potion_ingredient -35 80 126 item_3
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players set @s var1 40
execute @s ~ ~ ~ detect 0 0 0 concrete 3 scoreboard players add @s var3 1
execute @s[scores={var2=2}] ~ ~ ~ detect 0 0 0 concrete 3 tag @s add correct


execute @s[scores={var1=22}] ~ ~ ~ execute @e[type=rwm:potion_ingredient] ~ ~ ~ setblock ~ ~1 ~ glass
execute @s[scores={var1=22}] ~ ~ ~ execute @e[type=rwm:potion_ingredient] ~ ~ ~ setblock ~ ~1 ~ air 0 destroy
execute @s[scores={var1=22}] ~ ~ ~ execute @e[type=rwm:potion_ingredient] ~ ~ ~ particle rwm:pipe_smoke ~ ~1 ~
execute @s[scores={var1=20},tag=correct] ~ ~ ~ playsound random.orb @a ~ ~ ~ 1 1 1
execute @s[scores={var1=20},tag=correct] ~ ~ ~ execute @e[type=rwm:potion_ingredient] ~ ~ ~ particle rwm:potion_checkmark ~ ~1.5 ~
execute @s[scores={var1=10}] ~ ~ ~ execute @e[type=rwm:potion_ingredient] ~ ~ ~ event entity @s despawn
execute @s[scores={var1=10},tag=correct] ~ ~ ~ scoreboard players add @s var2 1
execute @s[scores={var1=10}] ~ ~ ~ playsound random.potion.brewed @a ~ ~ ~ 1 1 1
execute @s[scores={var1=10,var2=1},tag=correct] ~ ~ ~ fill -40 69 120 -32 72 132 stained_glass 3 replace stained_glass
execute @s[scores={var1=10,var2=1},tag=correct] ~ ~ ~ fill -40 69 120 -32 72 132 concrete 3 replace concrete
execute @s[scores={var1=10,var2=2},tag=correct] ~ ~ ~ fill -40 69 120 -32 72 132 stained_glass 0 replace stained_glass
execute @s[scores={var1=10,var2=2},tag=correct] ~ ~ ~ fill -40 69 120 -32 72 132 concrete 0 replace concrete
execute @s[scores={var1=10,var2=3},tag=correct] ~ ~ ~ fill -40 69 120 -32 72 132 stained_glass 5 replace stained_glass
execute @s[scores={var1=10,var2=3},tag=correct] ~ ~ ~ fill -40 69 120 -32 72 132 concrete 5 replace concrete
execute @s[scores={var1=10},tag=!correct] ~ ~ ~ scoreboard players set @s var2 -1
execute @s[scores={var1=10},tag=!correct] ~ ~ ~ fill -40 69 120 -32 72 132 stained_glass 14 replace stained_glass
execute @s[scores={var1=10},tag=!correct] ~ ~ ~ fill -40 69 120 -32 72 132 concrete 14 replace concrete
execute @s[scores={var1=10}] ~ ~ ~ tag @s remove correct
scoreboard players remove @s[scores={var1=1..}] var1 1

# Code stops running
execute @s[tag=end_signal,scores={var2=3}] ~ ~ ~ scoreboard players add @a address 1
execute @s[tag=end_signal,scores={address=40400}] ~ ~ ~ scoreboard players add @a address 2

execute @s[scores={var2=1..}] ~ ~ ~ particle rwm:cauldron_smoke -35 72 130
execute @s[scores={var2=2..}] ~ ~ ~ particle rwm:cauldron_smoke -35 72 122
execute @s[scores={var2=3..}] ~ ~ ~ particle rwm:cauldron_smoke -35 72 126

effect @e[type=rwm:potion_ingredient,x=-35,y=73,z=122,dx=0,dy=2,dz=8] slow_falling 1 0 true