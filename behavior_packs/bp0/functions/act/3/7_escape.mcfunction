# execute @s[scores={cam.tick=30}] ~ ~ ~ event entity @e[type=rwm:time_agent] despawn
execute @s[scores={cam.tick=30}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1.2 1
execute @s[scores={cam.tick=30}] ~ ~ ~ playanimation @e[type=rwm:time_agent] scale_in
execute @s[scores={cam.tick=20}] ~ ~ ~ playsound mob.shulker.teleport @a ~ ~ ~ 1 1.2 1
execute @s[scores={cam.tick=20}] ~ ~ ~ execute @e[type=rwm:time_agent] ~ ~ ~ particle rwm:sparkle_burst ~ ~ ~
execute @s[scores={cam.tick=15}] ~ ~ ~ teleport @e[tag=actor.tarra_mark] 29 72 164
execute @s[scores={cam.tick=0},tag=!in_notebook] ~ ~ ~ dialogue open @e[tag=actor.tarra] @s npc.foyer.5.1
scoreboard players remove @s[scores={cam.tick=1..}] cam.tick 1