
function clear_entities
tag @e[type=rwm:zombie_chef] add old

execute @s[scores={room_variant=1}] ~ ~ ~ tp @a 23 71 134 180 0
execute @s[scores={room_variant=2}] ~ ~ ~ tp @a 23 71 134 180 0
execute @s[scores={room_variant=3}] ~ ~ ~ tp @a 23 71 134 180 0

execute @s[scores={room_variant=1}] ~ ~ ~ summon rwm:bread_steps 21 72 122
execute @s[scores={room_variant=2}] ~ ~ ~ summon rwm:bread_steps 18 72 121
execute @s[scores={room_variant=3}] ~ ~ ~ summon rwm:bread_steps 20 72 121

execute @s[tag=!note_3,scores={room_variant=1}] ~ ~ ~ summon rwm:note 33 72 121
execute @s[tag=!note_3,scores={room_variant=2}] ~ ~ ~ summon rwm:note 33 72 121
execute @s[tag=!note_3,scores={room_variant=3}] ~ ~ ~ summon rwm:note 33 72 121
tag @e[type=rwm:note] add note_3
dialogue change @e[type=rwm:note,tag=!old] npc.note.3

summon rwm:zombie_chef 17 71 124 npc
dialogue change @e[type=rwm:zombie_chef,tag=!old] npc.zombie_chef.0
tag @e[type=rwm:zombie_chef] add interactable

summon rwm:bread_step_1 18 72 126
summon rwm:bread_step_2 18 72 128
summon rwm:bread_step_3 18 72 130

execute @s[scores={room_variant=1}] ~ ~ ~ summon rwm:menu 35 71.5 129
execute @s[scores={room_variant=1}] ~ ~ ~ event entity @e[type=rwm:menu] rot90
execute @s[scores={room_variant=2}] ~ ~ ~ summon rwm:menu 27 72 122
execute @s[scores={room_variant=2}] ~ ~ ~ execute @e[type=rwm:menu] ~ ~ ~ tp @s ~0.5 ~ ~
execute @s[scores={room_variant=3}] ~ ~ ~ summon rwm:menu 30 72 122
execute @s[scores={room_variant=3}] ~ ~ ~ execute @e[type=rwm:menu] ~ ~ ~ tp @s ~0.5 ~ ~

time set noon