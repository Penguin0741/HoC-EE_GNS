execute @s[scores={cam.tick=100}] ~ ~ ~ setblock -8 66 -171 iron_trapdoor 13
execute @s[scores={cam.tick=100}] ~ ~ ~ playsound random.door_open @a ~ ~ ~ 1 1 1

execute @s[scores={cam.tick=80}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 0.5 1
execute @s[scores={cam.tick=80}] ~ ~ ~ teleport @e[tag=actor.player_mark] -10 68.5 -171
execute @s[scores={cam.tick=80}] ~ ~ ~ teleport @e[tag=actor.tarra_mark] -10 68.5 -171
execute @s[scores={cam.tick=80}] ~ ~ ~ playanimation @e[tag=actor.doctor] doctor_escape
execute @s[scores={cam.tick=80}] ~ ~ ~ teleport @e[tag=actor.doctor] -10 67 -171

execute @s[scores={cam.tick=45}] ~ ~ ~ particle rwm:doctor_land -10 67 -171
execute @s[scores={cam.tick=45}] ~ ~ ~ playsound dig.sand @a ~ ~ ~ 1 1 1

execute @s[scores={cam.tick=30}] ~ ~ ~ teleport @e[tag=actor.doctor_mark] -12 68.5 -169

execute @s[scores={cam.tick=0}] ~ ~ ~ dialogue open @e[tag=actor.doctor] @s npc.end.2.1
scoreboard players remove @s[scores={cam.tick=1..}] cam.tick 1