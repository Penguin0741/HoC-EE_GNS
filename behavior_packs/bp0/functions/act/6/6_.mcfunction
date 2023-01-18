
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.next.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.next.0"}]}

execute @a[x=-64,y=76,z=185,dx=4,dy=4,dz=2,scores={room_variant=1}] ~ ~ ~ fill -58 80 187 -58 76 185 barrier
execute @a[x=-69,y=77,z=181,dx=4,dy=4,dz=2,scores={room_variant=2}] ~ ~ ~ fill -63 77 183 -62 80 181 barrier
execute @a[x=-64,y=75,z=179,dx=4,dy=4,dz=2,scores={room_variant=3}] ~ ~ ~ fill -58 75 181 -57 78 179 barrier
execute @a[x=-64,y=76,z=185,dx=4,dy=4,dz=2,scores={room_variant=1}] ~ ~ ~ function act/3/0
execute @a[x=-69,y=77,z=181,dx=4,dy=4,dz=2,scores={room_variant=2}] ~ ~ ~ function act/3/0
execute @a[x=-64,y=75,z=179,dx=4,dy=4,dz=2,scores={room_variant=3}] ~ ~ ~ function act/3/0

execute @s[scores={room_variant=1,path=1}] ~ ~ ~ particle rwm:hallway_green -62 77 186
execute @s[scores={room_variant=2,path=1}] ~ ~ ~ particle rwm:hallway_green -67 78 182
execute @s[scores={room_variant=3,path=1}] ~ ~ ~ particle rwm:hallway_green -62 76 180
execute @s[scores={room_variant=1,path=2}] ~ ~ ~ particle rwm:hallway_yellow -62 77 186
execute @s[scores={room_variant=2,path=2}] ~ ~ ~ particle rwm:hallway_yellow -67 78 182
execute @s[scores={room_variant=3,path=2}] ~ ~ ~ particle rwm:hallway_yellow -62 76 180
execute @s[scores={room_variant=1,path=3}] ~ ~ ~ particle rwm:hallway_red -62 77 186
execute @s[scores={room_variant=2,path=3}] ~ ~ ~ particle rwm:hallway_red -67 78 182
execute @s[scores={room_variant=3,path=3}] ~ ~ ~ particle rwm:hallway_red -62 76 180