
function clear_entities

execute @s[scores={room_variant=1}] ~ ~ ~ tp @a -62 77 115 270 0
execute @s[scores={room_variant=2}] ~ ~ ~ tp @a -48 74 116 0 0
execute @s[scores={room_variant=3}] ~ ~ ~ tp @a -48 74 116 0 0

execute @s[tag=!note_5,scores={room_variant=1}] ~ ~ ~ summon rwm:note -44 75 118
execute @s[tag=!note_5,scores={room_variant=2}] ~ ~ ~ summon rwm:note -42 75 117
execute @s[tag=!note_5,scores={room_variant=3}] ~ ~ ~ summon rwm:note -40 74 118
tag @e[type=rwm:note] add note_5
dialogue change @e[type=rwm:note,tag=!old] npc.note.5

fill -43 75 129 -43 76 129 air

setblock -57 74 131 air
setblock -57 74 133 air
setblock -59 74 131 sticky_piston 4
setblock -59 74 133 sticky_piston 4
setblock -60 74 131 redstone_block
setblock -60 74 133 redstone_block

setblock -42 66 125 light_block 15
summon rwm:fake_agent -42 66 125

time set noon