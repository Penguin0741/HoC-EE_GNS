
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.next.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.next.0"}]}

execute @a[x=16,y=71,z=62,dx=2,dy=4,dz=4] ~ ~ ~ fill 16 74 68 18 71 68 barrier
execute @a[x=16,y=71,z=62,dx=2,dy=4,dz=4] ~ ~ ~ function act/2/0

execute @s[scores={path=1}] ~ ~ ~ particle rwm:hallway_green 17 72 64
execute @s[scores={path=2}] ~ ~ ~ particle rwm:hallway_yellow 17 72 64
execute @s[scores={path=3}] ~ ~ ~ particle rwm:hallway_red 17 72 64