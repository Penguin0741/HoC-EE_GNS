
scoreboard players random @s room_variant 1 3

setblock -70 68 148 air

fill -51 77 207 -33 74 186 air 0 replace rail

execute @s[scores={room_variant=1}] ~ ~ ~ structure load "hoc:room6_1" -70 68 148
execute @s[scores={room_variant=2}] ~ ~ ~ structure load "hoc:room6_2" -70 68 148
execute @s[scores={room_variant=3}] ~ ~ ~ structure load "hoc:room6_3" -70 68 148

execute @s[scores={room_variant=1}] ~ ~ ~ setblock -47 79 204 brick_block

execute @s[scores={room_variant=3}] ~ ~ ~ fill -59 75 183 -61 78 183 planks
execute @s[scores={room_variant=3}] ~ ~ ~ setblock -50 77 186 barrier

execute @s[scores={room_variant=1,path=3}] ~ ~ ~ fill -64 76 188 -59 79 188 stained_glass 14
execute @s[scores={room_variant=1,path=3}] ~ ~ ~ fill -64 76 184 -59 79 184 stained_glass 14
execute @s[scores={room_variant=1,path=3}] ~ ~ ~ fill -58 76 187 -58 80 185 stained_hardened_clay 14
execute @s[scores={room_variant=1,path=3}] ~ ~ ~ fill -59 75 183 -65 81 189 crimson_planks 0 replace planks

execute @s[scores={room_variant=2,path=3}] ~ ~ ~ fill -69 77 184 -64 80 184 stained_glass 14
execute @s[scores={room_variant=2,path=3}] ~ ~ ~ fill -69 77 180 -64 80 180 stained_glass 14
execute @s[scores={room_variant=2,path=3}] ~ ~ ~ fill -63 77 183 -63 80 181 stained_hardened_clay 14
execute @s[scores={room_variant=2,path=3}] ~ ~ ~ fill -70 76 179 -64 82 185 crimson_planks 0 replace planks

execute @s[scores={room_variant=3,path=3}] ~ ~ ~ fill -64 75 182 -59 78 182 stained_glass 14
execute @s[scores={room_variant=3,path=3}] ~ ~ ~ fill -64 75 178 -59 78 178 stained_glass 14
execute @s[scores={room_variant=3,path=3}] ~ ~ ~ fill -58 75 181 -58 78 179 stained_hardened_clay 14
execute @s[scores={room_variant=3,path=3}] ~ ~ ~ fill -65 74 177 -59 80 183 crimson_planks 0 replace planks

fill -31 75 172 -31 74 172 rwm:yellow_square
fill -33 75 172 -33 74 172 rwm:light_blue_square
fill -35 75 172 -35 74 172 rwm:magenta_square
fill -37 75 172 -37 74 172 rwm:orange_square