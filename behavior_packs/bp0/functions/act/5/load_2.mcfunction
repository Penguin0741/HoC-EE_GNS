
function clear_entities

execute @s[scores={room_variant=1}] ~ ~ ~ tp @a -66 73 46 0 0
execute @s[scores={room_variant=2}] ~ ~ ~ tp @a -71 73 49 270 0
execute @s[scores={room_variant=3}] ~ ~ ~ tp @a -67 71 49 270 0

execute @s[tag=!note_6,scores={room_variant=1}] ~ ~ ~ summon rwm:note -39 74 59 rot90
execute @s[tag=!note_6,scores={room_variant=2}] ~ ~ ~ summon rwm:note -42 74 66 rot180
execute @s[tag=!note_6,scores={room_variant=3}] ~ ~ ~ summon rwm:note -44 74 52 rot90
tag @e[type=rwm:note] add note_6
dialogue change @e[type=rwm:note,tag=!old] npc.note.6

setblock -53 78 41 stonebrick 2
setblock -53 80 40 air

fill -55 103 41 -51 108 41 structure_void
fill -52 101 52 -54 101 59 structure_void
fill -51 106 80 -56 106 78 structure_void

setblock -53 78 41 rwm:extra_cracked_bricks
setblock -55 77 41 rwm:extra_cracked_bricks
setblock -51 77 41 rwm:extra_cracked_bricks
setblock -52 75 41 rwm:extra_cracked_bricks
setblock -54 73 41 rwm:extra_cracked_bricks

time set noon