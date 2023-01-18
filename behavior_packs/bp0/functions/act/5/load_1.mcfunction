
scoreboard players random @s room_variant 1 3

setblock -73 64 34 air

# Fill with stone to clear any water
fill -44 72 71 -62 69 42 stone
fill -50 73 44 -55 78 41 stone

execute @s[scores={room_variant=1}] ~ ~ ~ structure load "hoc:room5_1" -73 64 34
execute @s[scores={room_variant=2}] ~ ~ ~ structure load "hoc:room5_2" -73 64 34
execute @s[scores={room_variant=3}] ~ ~ ~ structure load "hoc:room5_3" -73 64 34