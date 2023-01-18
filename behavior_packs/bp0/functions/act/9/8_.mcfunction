
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.next.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.next.0"}]}

execute @a[x=-154,y=76,z=121,dx=4,dy=4,dz=2] ~ ~ ~ fill -148 76 121 -148 79 123 barrier
execute @a[x=-154,y=76,z=121,dx=4,dy=4,dz=2] ~ ~ ~ function act/6/0

execute @s[scores={path=1}] ~ ~ ~ particle rwm:hallway_green -152 77 122
execute @s[scores={path=2}] ~ ~ ~ particle rwm:hallway_yellow -152 77 122
execute @s[scores={path=3}] ~ ~ ~ particle rwm:hallway_red -152 77 122