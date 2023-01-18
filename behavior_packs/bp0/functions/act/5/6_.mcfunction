
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.next.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.next.0"}]}

execute @a[x=-39,y=77,z=74,dx=4,dy=4,dz=2] ~ ~ ~ fill -42 77 74 -43 80 76 barrier
execute @a[x=-39,y=77,z=74,dx=4,dy=4,dz=2] ~ ~ ~ function act/6/0

execute @s[scores={path=1}] ~ ~ ~ particle rwm:hallway_green -37 78 75
execute @s[scores={path=2}] ~ ~ ~ particle rwm:hallway_yellow -37 78 75
execute @s[scores={path=3}] ~ ~ ~ particle rwm:hallway_red -37 78 75