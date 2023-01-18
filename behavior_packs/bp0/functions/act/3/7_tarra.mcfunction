# structure save foyer:tarra 26 71 159 26 73 161 true disk
execute @s[scores={cam.tick=30}] ~ ~ ~ playsound dig.shroomlight @a ~ ~ ~ 1 1.2 1
execute @s[scores={cam.tick=30}] ~ ~ ~ structure load foyer:tarra 26 71 159 0_degrees none true false
execute @s[scores={cam.tick=0},tag=!in_notebook] ~ ~ ~ dialogue open @e[tag=actor.tarra] @s npc.foyer.3.1
scoreboard players remove @s[scores={cam.tick=1..}] cam.tick 1