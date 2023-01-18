
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.next.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.next.0"}]}

execute @a[x=-49,y=77,z=142,dx=2,dy=5,dz=5] ~ ~ ~ fill -47 80 140 -49 77 140 barrier
execute @a[x=-49,y=77,z=142,dx=2,dy=5,dz=5] ~ ~ ~ function act/5/0

execute @s[scores={path=1}] ~ ~ ~ particle rwm:hallway_green -48 78 144
execute @s[scores={path=2}] ~ ~ ~ particle rwm:hallway_yellow -48 78 144
execute @s[scores={path=3}] ~ ~ ~ particle rwm:hallway_red -48 78 144

effect @a[x=-50,y=74,z=135,dx=4,dy=4,dz=2] levitation 1 1 true
particle rwm:levitation -48 73 137
particle rwm:pipe_spurt -46 77 136
particle rwm:pipe_suck -39 71 131

execute @s[scores={room_variant=1}] ~ ~ ~ particle rwm:pipe_vapor -43 79 133
execute @s[scores={room_variant=2}] ~ ~ ~ particle rwm:pipe_vapor -43 82 133
execute @s[scores={room_variant=3}] ~ ~ ~ particle rwm:pipe_vapor -43 79 133