# structure save foyer:host 29 71 158 29 72 158 true disk
execute @s[scores={cam.tick=30}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 0.7 1
execute @s[scores={cam.tick=30}] ~ ~ ~ playsound chime.amethyst_block @a ~ ~ ~ 1 1 1
execute @s[scores={cam.tick=30}] ~ ~ ~ structure load foyer:host 29 71 158 0_degrees none true false
execute @s[scores={cam.tick=0},tag=!in_notebook] ~ ~ ~ dialogue open @e[tag=actor.host] @s npc.foyer.1.1
scoreboard players remove @s[scores={cam.tick=1..}] cam.tick 1