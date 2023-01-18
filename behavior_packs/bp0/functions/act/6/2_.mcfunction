
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}

particle rwm:sparkle -18 77 162
particle rwm:sparkle -18 78 162

execute @s[x=-28,y=75,z=161,dx=5,dy=5,dz=5] ~ ~ ~ function act/6/3