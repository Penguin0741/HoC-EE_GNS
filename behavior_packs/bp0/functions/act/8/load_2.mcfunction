
function clear_entities

execute @s[scores={room_variant=1}] ~ ~ ~ tp @a -113 72 165 90 0
execute @s[scores={room_variant=2}] ~ ~ ~ tp @a -119 72 160 0 0
execute @s[scores={room_variant=3}] ~ ~ ~ tp @a -113 72 165 90 0

execute @s[tag=!note_9,scores={room_variant=1}] ~ ~ ~ summon rwm:note -126 79 195 rot270
execute @s[tag=!note_9,scores={room_variant=2}] ~ ~ ~ summon rwm:note -126 79 193 rot270
execute @s[tag=!note_9,scores={room_variant=3}] ~ ~ ~ summon rwm:note -125 78 194 rot270
tag @e[type=rwm:note] add note_9
dialogue change @e[type=rwm:note,tag=!old] npc.note.9

fill -119 72 171 -121 74 171 air
fill -117 75 189 -121 77 189 air
setblock -115 78 185 air
fill -117 79 198 -121 78 198 stonebrick
fill -116 77 185 -116 79 189 barrier

fill -117 102 171 -121 104 171 structure_void
fill -111 105 178 -111 108 184 structure_void
fill -115 107 186 -115 107 189 structure_void
fill -117 108 198 -121 109 198 structure_void

fill -118 77 184 -120 77 184 barrier

summon rwm:wind_cube -111 76 179
tag @e[type=rwm:wind_cube] add wind_1
summon rwm:wind_cube -111 77 181
tag @e[type=rwm:wind_cube,tag=!wind_1] add wind_2
summon rwm:wind_cube -111 76 183
tag @e[type=rwm:wind_cube,tag=!wind_1,tag=!wind_2] add wind_3

time set noon