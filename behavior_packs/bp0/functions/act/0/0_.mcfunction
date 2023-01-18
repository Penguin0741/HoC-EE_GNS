ride @s[tag=cam.ride] start_riding @e[type=rwm:cam,tag=cam.mount] teleport_rider

# CUTSCENE 1

execute @s[scores={cam.next=11}] ~ ~ ~ teleport @e[tag=cam.dolly_mark] -12 69 -298
execute @s[scores={cam.next=11}] ~ ~ ~ event entity @e[tag=cam.dolly] speed_09
execute @s[scores={cam.next=11}] ~ ~ ~ event entity @e[tag=actor.player] speed_10
execute @s[scores={cam.next=11}] ~ ~ ~ scoreboard players set @s cam.next 20

execute @s[scores={cam.next=22}] ~ ~ ~ scoreboard players set @s cam.tick 30
execute @s[scores={cam.next=22}] ~ ~ ~ scoreboard players set @s cam.next 30

execute @s[scores={cam.next=30}] ~ ~ ~ function act/0/0_gate

execute @s[scores={cam.next=31}] ~ ~ ~ teleport @e[tag=cam.dolly_mark] -12 69 -270
execute @s[scores={cam.next=31}] ~ ~ ~ teleport @e[tag=cam.subject] -12 72 -271
execute @s[scores={cam.next=31}] ~ ~ ~ teleport @e[tag=actor.player_mark] -12 69.6 -271
execute @s[scores={cam.next=31}] ~ ~ ~ event entity @e[tag=cam.dolly] speed_12
execute @s[scores={cam.next=31}] ~ ~ ~ event entity @e[tag=actor.player] speed_10
execute @s[scores={cam.next=31}] ~ ~ ~ scoreboard players set @s cam.next 40

execute @s[scores={cam.next=42}] ~ ~ ~ function act/0/1

# Turn host npc around for later
execute @e[type=rwm:host] ~ ~ ~ tp @s ~ ~ ~ 180 0