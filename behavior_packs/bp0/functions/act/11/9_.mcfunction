
ride @s[tag=cam.ride] start_riding @e[type=rwm:cam,tag=cam.mount] teleport_rider

# CUTSCENE 5

execute @s[scores={var1=1}] ~ ~ ~ tp @e[tag=actor.tarra] -14 67 -172
execute @s[scores={var1=1}] ~ ~ ~ playanimation @e[tag=actor.tarra] scale_up
execute @s[scores={var1=1}] ~ ~ ~ playsound dig.shroomlight @a ~ ~ ~ 1 1.2 1
scoreboard players remove @s[scores={var1=1..}] var1 1

execute @s[scores={cam.next=11}] ~ ~ ~ teleport @e[tag=actor.player_mark] -14 68.5 -172
execute @s[scores={cam.next=11}] ~ ~ ~ scoreboard players set @s cam.tick 20
execute @s[scores={cam.next=11}] ~ ~ ~ scoreboard players set @s cam.next 20

execute @s[scores={cam.next=20}] ~ ~ ~ function act/11/9_tarra

execute @s[scores={cam.next=30..31}] ~ ~ ~ function act/11/9_sewer

execute @s[scores={cam.next=40..}] ~ ~ ~ function act/11/9_end