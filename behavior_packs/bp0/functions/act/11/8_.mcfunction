
ride @s[tag=cam.ride] start_riding @e[type=rwm:cam,tag=cam.mount] teleport_rider

# CUTSCENE 4

execute @s[scores={cam.next=11}] ~ ~ ~ teleport @e[tag=actor.player_mark] 225 43 -588
execute @s[scores={cam.next=11}] ~ ~ ~ scoreboard players set @s cam.next 20

execute @s[scores={cam.next=21}] ~ ~ ~ scoreboard players set @s cam.tick 280
execute @s[scores={cam.next=21}] ~ ~ ~ scoreboard players set @s cam.next 30

execute @s[scores={cam.next=30}] ~ ~ ~ function act/11/8_beam

execute @s[scores={cam.next=31}] ~ ~ ~ function act/11/8_gnslink

execute @s[scores={cam.next=40}] ~ ~ ~ function act/11/9