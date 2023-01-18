
execute @a[tag=main_player,scores={address=100100}] ~ ~ ~ function act/10/2

playsound item.book.page_turn @a[tag=main_player] ~ ~ ~ 1 1 1

event entity @e[type=rwm:notebook] closed
tag @a[tag=main_player] remove in_notebook

execute @a[tag=main_player,scores={cam.next=21}] ~ ~ ~ scoreboard players set @s cam.next 20
execute @a[tag=main_player,scores={cam.next=31}] ~ ~ ~ scoreboard players set @s cam.next 30
execute @a[tag=main_player,scores={cam.next=41}] ~ ~ ~ scoreboard players set @s cam.next 40
execute @a[tag=main_player,scores={cam.next=51}] ~ ~ ~ scoreboard players set @s cam.next 50