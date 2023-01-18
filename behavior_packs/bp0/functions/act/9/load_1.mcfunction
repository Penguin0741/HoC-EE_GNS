
scoreboard players random @s room_variant 1 3

setblock -152 69 109 air

execute @s[scores={room_variant=1}] ~ ~ ~ structure load "hoc:room9_1" -152 69 109
execute @s[scores={room_variant=2}] ~ ~ ~ structure load "hoc:room9_2" -152 69 109
execute @s[scores={room_variant=3}] ~ ~ ~ structure load "hoc:room9_3" -152 69 109
structure load "hoc:room9_exit" -155 75 119