
function clear_entities
tag @e[type=rwm:queen] add old
tag @e[type=rwm:bishop] add old
tag @e[type=rwm:rook] add old

tp @a 29 77 183 180 0

execute @s[tag=!note_4] ~ ~ ~ summon rwm:note 29 73 178 rot180
tag @e[type=rwm:note] add note_4
dialogue change @e[type=rwm:note,tag=!old] npc.note.4

summon rwm:queen 11 75 161
dialogue change @e[type=rwm:queen,tag=!old] npc.queen.0
event entity @e[type=rwm:queen] rotation1
summon rwm:bishop 31 70 170
dialogue change @e[type=rwm:bishop,tag=!old] npc.bishop.0
summon rwm:rook 27 70 170
dialogue change @e[type=rwm:rook,tag=!old] npc.rook.0

fill 13 102 169 13 106 163 structure_void

tag @s remove king
tag @s remove queen

time set noon