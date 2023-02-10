
execute @s[tag=note_1] ~ ~ ~ tag @a[tag=main_player] add note_1
execute @s[tag=note_2] ~ ~ ~ tag @a[tag=main_player] add note_2
execute @s[tag=note_3] ~ ~ ~ tag @a[tag=main_player] add note_3
execute @s[tag=note_4] ~ ~ ~ tag @a[tag=main_player] add note_4
execute @s[tag=note_5] ~ ~ ~ tag @a[tag=main_player] add note_5
execute @s[tag=note_6] ~ ~ ~ tag @a[tag=main_player] add note_6
execute @s[tag=note_7] ~ ~ ~ tag @a[tag=main_player] add note_7
execute @s[tag=note_8] ~ ~ ~ tag @a[tag=main_player] add note_8
execute @s[tag=note_9] ~ ~ ~ tag @a[tag=main_player] add note_9
execute @s[tag=note_10] ~ ~ ~ tag @a[tag=main_player] add note_10

event entity @s fade

execute @a[tag=main_player,tag=note_1,tag=note_2,tag=note_3,tag=note_4,tag=note_5,tag=note_6,tag=note_7,tag=!trophy_book] ~ ~ ~ function trophy/unlock_book

tag @a[tag=main_player] remove in_notebook