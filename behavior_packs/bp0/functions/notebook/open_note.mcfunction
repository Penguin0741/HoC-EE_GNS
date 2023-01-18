
execute @s[tag=note_1] ~ ~ ~ dialogue open @e[type=rwm:notebook] @a[tag=main_player] npc.note.1
execute @s[tag=note_2] ~ ~ ~ dialogue open @e[type=rwm:notebook] @a[tag=main_player] npc.note.2
execute @s[tag=note_3] ~ ~ ~ dialogue open @e[type=rwm:notebook] @a[tag=main_player] npc.note.3
execute @s[tag=note_4] ~ ~ ~ dialogue open @e[type=rwm:notebook] @a[tag=main_player] npc.note.4
execute @s[tag=note_5] ~ ~ ~ dialogue open @e[type=rwm:notebook] @a[tag=main_player] npc.note.5
execute @s[tag=note_6] ~ ~ ~ dialogue open @e[type=rwm:notebook] @a[tag=main_player] npc.note.6
execute @s[tag=note_7] ~ ~ ~ dialogue open @e[type=rwm:notebook] @a[tag=main_player] npc.note.7
execute @s[tag=note_8] ~ ~ ~ dialogue open @e[type=rwm:notebook] @a[tag=main_player] npc.note.8
execute @s[tag=note_9] ~ ~ ~ dialogue open @e[type=rwm:notebook] @a[tag=main_player] npc.note.9
execute @s[tag=note_10] ~ ~ ~ dialogue open @e[type=rwm:notebook] @a[tag=main_player] npc.note.10

event entity @e[type=rwm:notebook] next
tag @a[tag=main_player] add in_notebook