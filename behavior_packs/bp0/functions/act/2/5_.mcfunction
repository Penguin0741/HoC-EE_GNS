
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.next.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.next.0"}]}

execute @a[x=30,y=71,z=137,dx=2,dy=4,dz=4] ~ ~ ~ fill 30 74 135 32 71 134 barrier
execute @a[x=30,y=71,z=137,dx=2,dy=4,dz=4] ~ ~ ~ function act/3/0

execute @s[scores={path=1}] ~ ~ ~ particle rwm:hallway_green 31 72 139
execute @s[scores={path=2}] ~ ~ ~ particle rwm:hallway_yellow 31 72 139
execute @s[scores={path=3}] ~ ~ ~ particle rwm:hallway_red 31 72 139