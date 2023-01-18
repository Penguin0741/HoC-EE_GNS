
scoreboard players add @a[tag=main_player] notebook_page 1

execute @a[tag=main_player,scores={notebook_page=1},tag=!note_1] ~ ~ ~ scoreboard players add @s notebook_page 1
execute @a[tag=main_player,scores={notebook_page=2},tag=!note_2] ~ ~ ~ scoreboard players add @s notebook_page 1
execute @a[tag=main_player,scores={notebook_page=3},tag=!note_3] ~ ~ ~ scoreboard players add @s notebook_page 1
execute @a[tag=main_player,scores={notebook_page=4},tag=!note_4] ~ ~ ~ scoreboard players add @s notebook_page 1
execute @a[tag=main_player,scores={notebook_page=5},tag=!note_5] ~ ~ ~ scoreboard players add @s notebook_page 1
execute @a[tag=main_player,scores={notebook_page=6},tag=!note_6] ~ ~ ~ scoreboard players add @s notebook_page 1
execute @a[tag=main_player,scores={notebook_page=7},tag=!note_7] ~ ~ ~ scoreboard players add @s notebook_page 1
execute @a[tag=main_player,scores={notebook_page=8},tag=!note_8] ~ ~ ~ scoreboard players add @s notebook_page 1
execute @a[tag=main_player,scores={notebook_page=9},tag=!note_9] ~ ~ ~ scoreboard players add @s notebook_page 1
execute @a[tag=main_player,scores={notebook_page=10},tag=!note_10] ~ ~ ~ scoreboard players add @s notebook_page 1
scoreboard players set @a[tag=main_player,scores={notebook_page=11..}] notebook_page 0

function notebook/current

execute @a[tag=main_player,scores={notebook_page=0}] ~ ~ ~ event entity @e[type=rwm:notebook] closed
execute @a[tag=main_player,scores={notebook_page=1..}] ~ ~ ~ event entity @e[type=rwm:notebook] next

playsound item.book.page_turn @a[tag=main_player] ~ ~ ~ 1 1 1