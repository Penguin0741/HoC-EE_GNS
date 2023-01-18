
tag @s remove in_area
tag @s[x=29,y=71,z=174,r=5] add in_area
execute @s[scores={var1=0},tag=!in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.2"}]}
execute @s[scores={var1=0},tag=!in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.2"}]}

particle rwm:sparkle 28 71 174
particle rwm:sparkle 29 71 174
particle rwm:sparkle 30 71 174
particle rwm:sparkle 28 71 173
particle rwm:sparkle 29 71 173
particle rwm:sparkle 30 71 173

execute @a[x=28,y=70,z=173,dx=2,dy=4,dz=1] ~ ~ ~ function act/3/6
