
function clear_entities
tag @e[type=rwm:enderman_butler] add old

execute @s[scores={room_variant=1}] ~ ~ ~ tp @a -90 81 63 90 0
execute @s[scores={room_variant=2}] ~ ~ ~ tp @a -90 81 66 90 0
execute @s[scores={room_variant=3}] ~ ~ ~ tp @a -90 81 66 90 0

execute @s[tag=!note_8,scores={room_variant=1}] ~ ~ ~ summon rwm:note -115 82 75 rot180
execute @s[tag=!note_8,scores={room_variant=2}] ~ ~ ~ summon rwm:note -115 82 76 rot180
execute @s[tag=!note_8,scores={room_variant=3}] ~ ~ ~ summon rwm:note -115 82 76 rot180
tag @e[type=rwm:note] add note_8
dialogue change @e[type=rwm:note,tag=!old] npc.note.8

setblock -103 81 59 air
summon rwm:enderman_butler 0 70 0
dialogue change @e[type=rwm:enderman_butler,tag=!old] npc.enderman_butler.0
execute @e[type=rwm:enderman_butler] ~ ~ ~ tp @s ~ ~ ~ 90 0
summon rwm:utility 0 64 0
tag @e[type=rwm:utility] add target

structure load "room7:mazespaces" -131 73 58

fill -128 78 55 -128 78 49 air

setblock -107 70 63 light_block 15
summon rwm:fake_agent -107 70 63

time set noon