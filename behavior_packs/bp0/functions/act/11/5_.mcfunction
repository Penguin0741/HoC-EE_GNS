
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.11.5"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.11.5"}]}

# Detect when player returns to main room
execute @s[tag=!cannon_1,x=204,y=42,z=-567,dx=0,dy=4,dz=4] ~ ~ ~ function act/11/5_cannon_1
execute @s[tag=!cannon_1,x=200,y=42,z=-567,dx=4,dy=4,dz=0] ~ ~ ~ function act/11/5_cannon_1
execute @s[tag=!cannon_2,x=204,y=42,z=-613,dx=0,dy=4,dz=4] ~ ~ ~ function act/11/5_cannon_2
execute @s[tag=!cannon_2,x=200,y=42,z=-609,dx=4,dy=4,dz=0] ~ ~ ~ function act/11/5_cannon_2
execute @s[tag=!cannon_3,x=246,y=42,z=-613,dx=0,dy=4,dz=4] ~ ~ ~ function act/11/5_cannon_3
execute @s[tag=!cannon_3,x=246,y=42,z=-609,dx=4,dy=4,dz=0] ~ ~ ~ function act/11/5_cannon_3
execute @s[tag=!cannon_4,x=246,y=42,z=-567,dx=0,dy=4,dz=4] ~ ~ ~ function act/11/5_cannon_4
execute @s[tag=!cannon_4,x=246,y=42,z=-567,dx=4,dy=4,dz=0] ~ ~ ~ function act/11/5_cannon_4