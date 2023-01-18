
function clear_entities

tag @e[type=rwm:note] add old

execute @s[scores={room_variant=1}] ~ ~ ~ tp @a 35 71 74 0 0
execute @s[scores={room_variant=2}] ~ ~ ~ tp @a 33 71 69 0 0
execute @s[scores={room_variant=3}] ~ ~ ~ tp @a 35 71 70 0 0


execute @s[tag=!note_2,scores={room_variant=1}] ~ ~ ~ summon rwm:note 32 72 88 rot180
execute @s[tag=!note_2,scores={room_variant=2}] ~ ~ ~ summon rwm:note 32 72 88 rot180
execute @s[tag=!note_2,scores={room_variant=3}] ~ ~ ~ summon rwm:note 32 72 88 rot180
tag @e[type=rwm:note] add note_2
dialogue change @e[type=rwm:note,tag=!old] npc.note.2

summon rwm:painting 39 72 89
summon rwm:inverted_painting 16 72 89

setblock 38 72 89 stone_button 1
fill 40 72 90 36 75 90 planks 5

summon rwm:armor_npc 15 71 70
execute @s 15 71 70 dialogue change @e[type=rwm:armor_npc,tag=!old,c=1] npc.armor.0
execute @s 15 71 70 tag @e[type=rwm:armor_npc,tag=!old,c=1] add main_armor

summon rwm:armor_npc 19 71 70
execute @s 19 71 70 dialogue change @e[type=rwm:armor_npc,tag=!old,c=1] npc.armor_2.0

setblock 33 70 92 light_block 15
summon rwm:fake_agent 33 70 92

time set noon