
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}

execute @e[type=minecart] ~ ~ ~ particle rwm:sparkle ~ ~1 ~

execute @s[x=-45,y=78,z=177,dx=9,dy=5,dz=4] ~ ~ ~ function act/6/5