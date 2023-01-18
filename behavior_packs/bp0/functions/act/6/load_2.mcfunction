
function clear_entities

execute @s[scores={room_variant=1}] ~ ~ ~ tp @a -40 75 163 270 0
execute @s[scores={room_variant=2}] ~ ~ ~ tp @a -36 75 156 0 0
execute @s[scores={room_variant=3}] ~ ~ ~ tp @a -51 75 165 270 0

execute @s[tag=!note_7,scores={room_variant=1}] ~ ~ ~ summon rwm:note -56 77 184 rot270
execute @s[tag=!note_7,scores={room_variant=2}] ~ ~ ~ summon rwm:note -61 78 177 rot270
execute @s[tag=!note_7,scores={room_variant=3}] ~ ~ ~ summon rwm:note -55 76 185 rot270
tag @e[type=rwm:note] add note_7
dialogue change @e[type=rwm:note,tag=!old] npc.note.7

time set noon