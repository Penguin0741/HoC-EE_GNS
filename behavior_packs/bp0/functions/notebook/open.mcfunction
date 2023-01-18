
scoreboard players set @a[tag=main_player] notebook_page 0
execute @a[tag=main_player] ~ ~ ~ function notebook/current

playsound item.book.page_turn @a[tag=main_player] ~ ~ ~ 1 1 1

event entity @e[type=rwm:notebook] closed
tag @a[tag=main_player] add in_notebook