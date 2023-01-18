
tag @s remove in_area
tag @s[x=13,y=72,z=70,r=5] add in_area
execute @s[scores={var1=0},tag=!in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.1"}]}
execute @s[scores={var1=0},tag=!in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.1"}]}

particle rwm:sparkle 13 72 70
execute @s[scores={var1=0,second=0},tag=in_area] ~ ~ ~ particle rwm:interact 13 72.5 69

execute @s ~ ~ ~ detect 13 72 68 lever 13 function act/1/7

execute @s[scores={var1=20}] ~ ~ ~ camerashake add @a 0.3 0.3 positional
execute @s[scores={var1=10}] ~ ~ ~ tp @a 22 71 84 270 0
execute @s[scores={var1=10}] ~ ~ ~ playsound mob.endermen.portal @a ~ ~ ~ 1 0.5 1
execute @s[scores={var1=10}] ~ ~ ~ effect @a blindness 1 1 true
scoreboard players remove @s[scores={var1=1..}] var1 1
