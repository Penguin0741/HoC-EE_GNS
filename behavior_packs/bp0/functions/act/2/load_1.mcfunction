
scoreboard players random @s room_variant 1 3

setblock 4 69 118 air

execute @s[scores={room_variant=1}] ~ ~ ~ structure load "hoc:room2_1" 4 69 118
execute @s[scores={room_variant=2}] ~ ~ ~ structure load "hoc:room2_2" 4 69 118
execute @s[scores={room_variant=3}] ~ ~ ~ structure load "hoc:room2_3" 4 69 118

fill 30 71 128 31 71 128 rwm:yellow_square_top
fill 29 71 127 29 71 126 rwm:light_blue_square_top
fill 30 71 125 31 71 125 rwm:orange_square_top
fill 32 71 126 32 71 127 rwm:magenta_square_top