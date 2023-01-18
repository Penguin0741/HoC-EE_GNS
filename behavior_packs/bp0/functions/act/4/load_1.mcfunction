
scoreboard players random @s room_variant 1 3

setblock -63 65 109 air

execute @s[scores={room_variant=1}] ~ ~ ~ structure load "hoc:room4_1" -63 65 109
execute @s[scores={room_variant=2}] ~ ~ ~ structure load "hoc:room4_2" -63 65 109
execute @s[scores={room_variant=3}] ~ ~ ~ structure load "hoc:room4_3" -63 65 109

clone -56 74 120 -56 77 124 -56 94 120
clone -56 75 128 -56 76 134 -56 95 128

setblock -57 74 128 emerald_block
setblock -57 74 134 gold_block
setblock -57 75 123 air
fill -41 74 126 -41 75 126 air

execute @s[scores={room_variant=2}] ~ ~ ~ fill -52 74 136 -52 76 136 air
execute @s[scores={room_variant=2}] ~ ~ ~ setblock -41 74 126 spruce_trapdoor 8