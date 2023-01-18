execute @s[scores={cam.tick=470}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 1 1
execute @s[scores={cam.tick=470}] ~ ~ ~ summon rwm:cookie -10 68 -171
execute @s[scores={cam.tick=450}] ~ ~ ~ playanimation @e[type=rwm:cookie] throw
execute @s[scores={cam.tick=430}] ~ ~ ~ playsound random.pop @a ~ ~ ~ 1 0.8 1
execute @s[scores={cam.tick=430}] ~ ~ ~ event entity @e[type=rwm:cookie] despawn
execute @s[scores={cam.tick=410}] ~ ~ ~ event entity @e[tag=actor.tarra] always_show_name_add
execute @s[scores={cam.tick=410}] ~ ~ ~ event entity @e[tag=actor.player] always_show_name_add
execute @s[scores={cam.tick=410}] ~ ~ ~ event entity @e[tag=actor.doctor] always_show_name_add
execute @s[scores={cam.tick=410}] ~ ~ ~ dialogue change @e[tag=actor.tarra] npc.end.laugh.1
execute @s[scores={cam.tick=400}] ~ ~ ~ dialogue change @e[tag=actor.tarra] npc.end.laugh.2
execute @s[scores={cam.tick=390}] ~ ~ ~ dialogue change @e[tag=actor.tarra] npc.end.laugh.3
execute @s[scores={cam.tick=410}] ~ ~ ~ dialogue change @e[tag=actor.player] npc.end.laugh.1
execute @s[scores={cam.tick=400}] ~ ~ ~ dialogue change @e[tag=actor.player] npc.end.laugh.2
execute @s[scores={cam.tick=390}] ~ ~ ~ dialogue change @e[tag=actor.player] npc.end.laugh.3
execute @s[scores={cam.tick=410}] ~ ~ ~ dialogue change @e[tag=actor.doctor] npc.end.laugh.1
execute @s[scores={cam.tick=400}] ~ ~ ~ dialogue change @e[tag=actor.doctor] npc.end.laugh.2
execute @s[scores={cam.tick=390}] ~ ~ ~ dialogue change @e[tag=actor.doctor] npc.end.laugh.3
execute @s[scores={cam.tick=360}] ~ ~ ~ event entity @e[tag=actor.tarra] always_show_name_remove
execute @s[scores={cam.tick=360}] ~ ~ ~ event entity @e[tag=actor.player] always_show_name_remove
execute @s[scores={cam.tick=360}] ~ ~ ~ event entity @e[tag=actor.doctor] always_show_name_remove

execute @s[scores={cam.tick=360}] ~ ~ ~ playanimation @e[tag=actor.tarra] scale_down
execute @s[scores={cam.tick=360}] ~ ~ ~ teleport @e[tag=actor.player_mark] -9 68.5 -181
execute @s[scores={cam.tick=360}] ~ ~ ~ teleport @e[tag=actor.doctor_mark] -7 68.5 -181
execute @s[scores={cam.tick=360}] ~ ~ ~ event entity @e[tag=actor.player] speed_08
execute @s[scores={cam.tick=360}] ~ ~ ~ event entity @e[tag=actor.doctor] speed_08
execute @s[scores={cam.tick=360}] ~ ~ ~ event entity @e[tag=cam.dolly] speed_05

execute @s[scores={cam.tick=300}] ~ ~ ~ teleport @e[tag=actor.player_mark] 1 68.5 -202
execute @s[scores={cam.tick=300}] ~ ~ ~ teleport @e[tag=actor.doctor_mark] 1 68.5 -202
execute @s[scores={cam.tick=300}] ~ ~ ~ event entity @e[tag=actor.player] speed_08
execute @s[scores={cam.tick=300}] ~ ~ ~ event entity @e[tag=actor.doctor] speed_08

execute @s[scores={cam.tick=200}] ~ ~ ~ event entity @e[tag=actor.tarra] despawn
execute @s[scores={cam.tick=200}] ~ ~ ~ event entity @e[tag=actor.doctor] despawn
execute @s[scores={cam.tick=200}] ~ ~ ~ event entity @e[tag=actor.player] despawn

execute @s[scores={cam.tick=360}] ~ ~ ~ titleraw @s times 20 200 20
execute @s[scores={cam.tick=360}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.end.1","with": ["\n"]}]}
execute @s[scores={cam.tick=280}] ~ ~ ~ playanimation @e[type=rwm:time_agent] window_peek
execute @s[scores={cam.tick=200}] ~ ~ ~ titleraw @s times 0 100 20
execute @s[scores={cam.tick=160}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.end.2","with": ["\n"]}]}
execute @s[scores={cam.tick=140}] ~ ~ ~ fill -11 77 -181 -13 80 -181 barrier
execute @s[scores={cam.tick=80}] ~ ~ ~ playsound mob.wither.spawn @a ~ ~ ~ 0.1 0.8 0.1
execute @s[scores={cam.tick=80}] ~ ~ ~ execute @e[type=rwm:time_agent] ~ ~ ~ tp @s -12 78.5 -178
execute @s[scores={cam.tick=80}] ~ ~ ~ playanimation @e[type=rwm:time_agent] scale_out
execute @s[scores={cam.tick=70}] ~ ~ ~ effect @s blindness 8 0 true
execute @s[scores={cam.tick=50}] ~ ~ ~ event entity @e[type=rwm:time_agent] despawn
execute @s[scores={cam.tick=-20}] ~ ~ ~ function replay
scoreboard players remove @s[scores={cam.tick=-19..}] cam.tick 1


