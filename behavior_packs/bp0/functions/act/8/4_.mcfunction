
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}

particle rwm:sparkle -115 79 190

execute @s[x=-121,y=75,z=184,dx=5,dy=4,dz=5] ~ ~ ~ function act/8/5