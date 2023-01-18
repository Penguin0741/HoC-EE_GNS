
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.next.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.next.0"}]}

execute @a[x=-120,y=78,z=204,dx=2,dy=4,dz=4] ~ ~ ~ fill -118 78 202 -120 81 201 barrier
execute @a[x=-120,y=78,z=204,dx=2,dy=4,dz=4] ~ ~ ~ function act/9/0

execute @s[scores={path=1}] ~ ~ ~ particle rwm:hallway_green -119 79 206
execute @s[scores={path=2}] ~ ~ ~ particle rwm:hallway_yellow -119 79 206
execute @s[scores={path=3}] ~ ~ ~ particle rwm:hallway_red -119 79 206