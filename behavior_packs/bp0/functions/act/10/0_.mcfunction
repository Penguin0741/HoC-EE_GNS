
tag @s remove in_area
tag @s[x=21,y=73,z=24,r=5] add in_area
execute @s[scores={var1=0},tag=!in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.10.0.1"}]}
execute @s[scores={var1=0},tag=in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.10.0.2"}]}
execute @s[scores={var1=0},tag=!in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.10.0.1"}]}
execute @s[scores={var1=0},tag=in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.10.0.2"}]}

execute @e[type=rwm:notebook_item] ~ ~ ~ particle rwm:sparkle ~ ~ ~0.5
execute @s[scores={second=0},tag=in_area] ~ ~ ~ execute @e[type=rwm:notebook_item] ~ ~ ~ particle rwm:interact ~-0.5 ~0.5 ~

execute @s[tag=replay,scores={var1=0}] ~ ~ ~ function act/10/2

# Load sequence
execute @s[scores={var1=5}] ~ ~ ~ function act/10/load_1
execute @s[scores={var1=2}] ~ ~ ~ detect 2 69 13 air 0 scoreboard players add @s var1 1
execute @s[scores={var1=2}] ~ ~ ~ function act/10/load_2
execute @s[scores={var1=1}] ~ ~ ~ playsound mob.shulker.teleport @s ~ ~ ~ 1 0.5 1
execute @s[scores={var1=1..}] ~ ~ ~ scoreboard players remove @s var1 1