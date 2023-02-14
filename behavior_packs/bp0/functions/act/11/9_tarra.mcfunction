execute @s[scores={cam.tick=0}] ~ ~ ~ dialogue open @e[tag=actor.tarra] @s npc.end.1.1
scoreboard players remove @s[scores={cam.tick=1..}] cam.tick 1

