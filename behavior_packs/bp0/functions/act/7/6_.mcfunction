
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.next.0"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.next.0"}]}

execute @a[x=-147,y=83,z=48,dx=4,dy=4,dz=2,scores={room_variant=1}] ~ ~ ~ fill -140 83 50 -141 86 48 barrier
execute @a[x=-147,y=83,z=48,dx=4,dy=4,dz=2,scores={room_variant=2}] ~ ~ ~ fill -140 83 50 -141 86 48 barrier
execute @a[x=-129,y=82,z=32,dx=2,dy=4,dz=4,scores={room_variant=3}] ~ ~ ~ fill -129 85 39 -127 82 38 barrier
execute @a[x=-147,y=83,z=48,dx=4,dy=4,dz=2,scores={room_variant=1}] ~ ~ ~ function act/8/0
execute @a[x=-147,y=83,z=48,dx=4,dy=4,dz=2,scores={room_variant=2}] ~ ~ ~ function act/8/0
execute @a[x=-129,y=82,z=32,dx=2,dy=4,dz=4,scores={room_variant=3}] ~ ~ ~ function act/8/0

execute @s[scores={room_variant=1,path=1}] ~ ~ ~ particle rwm:hallway_green -145 84 49
execute @s[scores={room_variant=2,path=1}] ~ ~ ~ particle rwm:hallway_green -145 84 49
execute @s[scores={room_variant=3,path=1}] ~ ~ ~ particle rwm:hallway_green -128 83 34
execute @s[scores={room_variant=1,path=2}] ~ ~ ~ particle rwm:hallway_yellow -145 84 49
execute @s[scores={room_variant=2,path=2}] ~ ~ ~ particle rwm:hallway_yellow -145 84 49
execute @s[scores={room_variant=3,path=2}] ~ ~ ~ particle rwm:hallway_yellow -128 83 34
execute @s[scores={room_variant=1,path=3}] ~ ~ ~ particle rwm:hallway_red -145 84 49
execute @s[scores={room_variant=2,path=3}] ~ ~ ~ particle rwm:hallway_red -145 84 49
execute @s[scores={room_variant=3,path=3}] ~ ~ ~ particle rwm:hallway_red -128 83 34