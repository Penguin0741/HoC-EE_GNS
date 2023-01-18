
scoreboard players random @s room_variant 1 3

setblock 7 69 61 air

execute @s[scores={room_variant=1}] ~ ~ ~ structure load "hoc:room1_1" 7 69 61
execute @s[scores={room_variant=2}] ~ ~ ~ structure load "hoc:room1_2" 7 69 61
execute @s[scores={room_variant=3}] ~ ~ ~ structure load "hoc:room1_3" 7 69 61

fill 28 73 86 28 74 82 barrier
fill 26 72 81 26 74 81 wood 9
fill 26 72 87 26 74 87 wood 9
fill 26 75 86 26 75 82 planks 5

fill 21 70 74 21 70 71 rwm:orange_square
fill 23 70 72 23 70 71 rwm:magenta_square
fill 11 70 73 11 70 71 rwm:yellow_square
fill 13 70 71 13 70 71 rwm:light_blue_square
setblock 21 73 69 rwm:orange_square
setblock 23 73 69 rwm:magenta_square
setblock 13 73 69 rwm:light_blue_square
setblock 11 73 69 rwm:yellow_square
setblock 21 71 68 rwm:orange_square
setblock 23 71 68 rwm:magenta_square
setblock 13 71 68 rwm:light_blue_square
setblock 11 71 68 rwm:yellow_square
setblock 20 72 68 rwm:orange_square
setblock 24 72 68 rwm:magenta_square
setblock 10 72 68 rwm:yellow_square
setblock 14 72 68 rwm:light_blue_square
setblock 21 73 68 rwm:orange_square
setblock 23 73 68 rwm:magenta_square
setblock 13 73 68 rwm:light_blue_square
setblock 11 73 68 rwm:yellow_square

fill 10 74 79 10 75 83 air
fill 10 74 79 10 74 83 lit_pumpkin 3
fill 42 74 83 42 75 79 air
fill 42 74 82 42 74 80 lit_pumpkin 1

setblock 13 72 69 air