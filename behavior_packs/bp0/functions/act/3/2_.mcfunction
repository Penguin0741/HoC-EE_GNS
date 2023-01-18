
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.3.2"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.3.2"}]}

# Region detect for previous state
execute @s[x=13,y=71,z=159,dx=12,dy=3,dz=12] ~ ~ ~ function act/3/1