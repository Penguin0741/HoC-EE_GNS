
tag @s remove in_area
tag @s[x=-128,y=82,z=53,r=7] add in_area
execute @s[scores={var1=0},tag=!in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.2"}]}
execute @s[scores={var1=0},tag=!in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.2"}]}

execute @s[x=-129,y=82,z=53,dx=2,dy=1,dz=1] ~ ~ ~ function act/7/5

particle rwm:sparkle -129 82 53
particle rwm:sparkle -128 82 53
particle rwm:sparkle -127 82 53
particle rwm:sparkle -129 82 54
particle rwm:sparkle -128 82 54
particle rwm:sparkle -127 82 54