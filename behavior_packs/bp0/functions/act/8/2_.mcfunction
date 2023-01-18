
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}

particle rwm:sparkle -112 76 179
particle rwm:sparkle -112 77 181
particle rwm:sparkle -112 76 183

execute @s[x=-122,y=75,z=175,dx=10,dy=4,dz=5] ~ ~ ~ function act/8/3