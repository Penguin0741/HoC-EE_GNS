
scoreboard players random @s room_variant 1 3

setblock -149 69 29 air

execute @s[scores={room_variant=1}] ~ ~ ~ structure load "hoc:room7_1" -149 69 29
execute @s[scores={room_variant=2}] ~ ~ ~ structure load "hoc:room7_2" -149 69 29
execute @s[scores={room_variant=3}] ~ ~ ~ structure load "hoc:room7_3" -149 69 29