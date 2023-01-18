
ride @s[tag=cam.ride] start_riding @e[type=rwm:cam,tag=cam.mount] teleport_rider

# CUTSCENE 2

execute @s[scores={cam.next=11}] ~ ~ ~ teleport @e[tag=cam.dolly_mark] -12 69 -175
execute @s[scores={cam.next=11}] ~ ~ ~ event entity @e[tag=cam.dolly] speed_08
execute @s[scores={cam.next=11}] ~ ~ ~ event entity @e[tag=actor.player] speed_00
execute @s[scores={cam.next=11}] ~ ~ ~ scoreboard players set @s cam.next 20

execute @s[scores={cam.next=21}] ~ ~ ~ teleport @e[tag=cam.dolly_mark] -12 70 -160
execute @s[scores={cam.next=21}] ~ ~ ~ teleport @e[tag=actor.player] -12 67 -178
execute @s[scores={cam.next=21}] ~ ~ ~ teleport @e[tag=actor.player_mark] -12 69 -169
execute @s[scores={cam.next=21}] ~ ~ ~ event entity @e[tag=actor.player] speed_08
execute @s[scores={cam.next=21}] ~ ~ ~ scoreboard players set @s cam.next 30

execute @s[scores={cam.next=31}] ~ ~ ~ scoreboard players set @s cam.tick 70
execute @s[scores={cam.next=31}] ~ ~ ~ scoreboard players set @s cam.next 40

execute @s[scores={cam.next=40}] ~ ~ ~ function act/0/6_house

execute @s[scores={cam.next=41}] ~ ~ ~ event entity @e[tag=cam.dolly] speed_20
execute @s[scores={cam.next=41}] ~ ~ ~ scoreboard players set @s cam.next 50

execute @s[scores={cam.next=51}] ~ ~ ~ function act/10/0