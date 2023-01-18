
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}

execute @s[x=26,y=71,z=122,dx=8,dy=4,dz=10] ~ ~ ~ function act/2/4

particle rwm:sparkle 29 72 128
particle rwm:sparkle 29 72 125
particle rwm:sparkle 32 72 125
particle rwm:sparkle 32 72 128