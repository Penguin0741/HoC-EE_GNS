
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}

particle rwm:sparkle -118 75 120
particle rwm:sparkle -122 75 120
particle rwm:sparkle -120 75 122
particle rwm:sparkle -118 75 124
particle rwm:sparkle -122 75 124

execute @s[x=-125,y=76,z=118,dx=10,dy=4,dz=10] ~ ~ ~ function act/9/3