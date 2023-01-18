
function clear_entities

execute @s[scores={room_variant=1}] ~ ~ ~ tp @a -91 77 118 90 0
execute @s[scores={room_variant=2}] ~ ~ ~ tp @a -91 77 118 90 0
execute @s[scores={room_variant=3}] ~ ~ ~ tp @a -91 77 118 90 0

execute @s[tag=!note_10,scores={room_variant=1}] ~ ~ ~ summon rwm:note -100 79 129 rot180
execute @s[tag=!note_10,scores={room_variant=2}] ~ ~ ~ summon rwm:note -100 81 129 rot180
execute @s[tag=!note_10,scores={room_variant=3}] ~ ~ ~ summon rwm:note -99 79 134 rot180
tag @e[type=rwm:note] add note_10
dialogue change @e[type=rwm:note,tag=!old] npc.note.10

setblock -106 77 122 air
structure load "room9:door1" -108 77 117
fill -126 78 127 -126 81 117 barrier 0 replace air

fill -107 108 121 -107 108 127 structure_void
fill -118 105 120 -122 105 124 structure_void

execute @s[scores={room_variant=1}] ~ ~ ~ structure load "room9:laserlid1_1" -144 72 117
execute @s[scores={room_variant=2}] ~ ~ ~ structure load "room9:laserlid2_1" -144 72 117
execute @s[scores={room_variant=3}] ~ ~ ~ structure load "room9:laserlid3_1" -144 72 117

execute @s[scores={room_variant=1}] ~ ~ ~ structure load "room9:curtain1_1" -126 76 116
execute @s[scores={room_variant=2}] ~ ~ ~ structure load "room9:curtain2_1" -125 75 115
execute @s[scores={room_variant=3}] ~ ~ ~ structure load "room9:curtain3_1" -125 75 117

summon rwm:red_velvet_rope -126 76 122

fill -126 76 118 -126 76 126 air
fill -126 77 118 -126 77 126 barrier

time set noon