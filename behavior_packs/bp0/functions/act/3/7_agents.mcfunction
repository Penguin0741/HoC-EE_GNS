execute @s[scores={cam.tick=40}] ~ ~ ~ event entity @e[tag=actor.host] despawn
execute @s[scores={cam.tick=40}] ~ ~ ~ particle rwm:host_poof 29 72 159
execute @s[scores={cam.tick=40}] ~ ~ ~ playsound mob.shulker.shoot @a ~ ~ ~ 1 1 1
execute @s[scores={cam.tick=30}] ~ ~ ~ structure load foyer:agents 28 71 158 0_degrees none true false
execute @s[scores={cam.tick=0},tag=!in_notebook] ~ ~ ~ dialogue open @e[type=rwm:time_agent,tag=rascal] @s npc.foyer.2.1
scoreboard players remove @s[scores={cam.tick=1..}] cam.tick 1