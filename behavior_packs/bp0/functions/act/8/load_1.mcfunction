
scoreboard players random @s room_variant 1 3

setblock -135 66 154 air

execute @s[scores={room_variant=1}] ~ ~ ~ structure load "hoc:room8_1" -135 66 154
execute @s[scores={room_variant=2}] ~ ~ ~ structure load "hoc:room8_2" -135 66 154
execute @s[scores={room_variant=3}] ~ ~ ~ structure load "hoc:room8_3" -135 66 154