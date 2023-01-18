
scoreboard players set @s room_variant 1

setblock 8 69 149 air

execute @s[scores={room_variant=1}] ~ ~ ~ structure load "hoc:room3_1" 8 69 149

fill 42 71 169 43 71 171 air

fill 44 73 167 44 75 167 rwm:silver_concrete_right_arrow
fill 44 73 173 44 75 173 rwm:silver_concrete_left_arrow
fill 44 77 169 44 77 171 rwm:silver_concrete_down_arrow
fill 44 71 169 44 71 171 rwm:silver_concrete_up_arrow

execute @s[scores={path=2}] ~ ~ ~ fill 27 76 150 27 71 155 stained_glass 4
execute @s[scores={path=2}] ~ ~ ~ fill 31 76 150 31 71 155 stained_glass 4
execute @s[scores={path=3}] ~ ~ ~ fill 27 76 150 27 71 155 stained_glass 14
execute @s[scores={path=3}] ~ ~ ~ fill 31 76 150 31 71 155 stained_glass 14

execute @s[scores={path=2}] ~ ~ ~ fill 28 76 156 30 71 156 stained_hardened_clay 4
execute @s[scores={path=3}] ~ ~ ~ fill 28 76 156 30 71 156 stained_hardened_clay 14

execute @s[scores={path=2}] ~ ~ ~ fill 32 70 155 26 77 149 planks 0 replace waxed_weathered_cut_copper
execute @s[scores={path=3}] ~ ~ ~ fill 32 70 155 26 77 149 crimson_planks 0 replace waxed_weathered_cut_copper