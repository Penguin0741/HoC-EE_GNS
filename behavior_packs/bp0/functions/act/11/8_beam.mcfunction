execute @s[scores={cam.tick=280}] ~ ~ ~ summon rwm:tractor_beam 225 41 -588

execute @s[scores={cam.tick=280}] ~ ~ ~ playsound beacon.ambient @a ~ ~ ~ 1 1 1
execute @s[scores={cam.tick=240}] ~ ~ ~ playsound conduit.activate @a ~ ~ ~ 1 1 1
execute @s[scores={cam.tick=240}] ~ ~ ~ playsound beacon.ambient @a ~ ~ ~ 1 1 1

execute @s[scores={cam.tick=200}] ~ ~ ~ tag @e[type=rwm:time_agent] remove stunned
execute @s[scores={cam.tick=200}] ~ ~ ~ playsound portal.trigger @a ~ ~ ~ 1 1 1
execute @s[scores={cam.tick=100..200}] ~ ~ ~ execute @e[type=rwm:time_agent] ~ ~ ~ particle rwm:capture_prepare ~ ~ ~
execute @s[scores={cam.tick=100}] ~ ~ ~ playsound conduit.deactivate @a ~ ~ ~ 1 1 1
execute @s[scores={cam.tick=100}] ~ ~ ~ execute @e[type=rwm:time_agent] ~ ~ ~ particle rwm:capture_agent ~ ~ ~
execute @s[scores={cam.tick=100}] ~ ~ ~ event entity @e[type=rwm:time_agent] despawn

execute @s[scores={cam.tick=50}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1
execute @s[scores={cam.tick=50}] ~ ~ ~ fill 215 40 -578 215 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=47}] ~ ~ ~ fill 216 40 -578 216 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=44}] ~ ~ ~ fill 217 40 -578 217 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=41}] ~ ~ ~ fill 218 40 -578 218 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=38}] ~ ~ ~ fill 219 40 -578 219 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=35}] ~ ~ ~ fill 220 40 -578 220 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=32}] ~ ~ ~ fill 221 40 -578 221 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=29}] ~ ~ ~ fill 222 40 -578 222 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=26}] ~ ~ ~ fill 223 40 -578 223 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=23}] ~ ~ ~ fill 224 40 -578 224 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=50}] ~ ~ ~ fill 235 40 -578 235 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=47}] ~ ~ ~ fill 234 40 -578 234 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=44}] ~ ~ ~ fill 233 40 -578 233 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=41}] ~ ~ ~ fill 232 40 -578 232 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=38}] ~ ~ ~ fill 231 40 -578 231 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=35}] ~ ~ ~ fill 230 40 -578 230 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=32}] ~ ~ ~ fill 229 40 -578 229 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=29}] ~ ~ ~ fill 228 40 -578 228 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=26}] ~ ~ ~ fill 227 40 -578 227 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=23}] ~ ~ ~ fill 226 40 -578 226 40 -598 iron_block 0 replace stained_glass
execute @s[scores={cam.tick=20}] ~ ~ ~ fill 225 40 -578 225 40 -598 iron_block 0 replace stained_glass

execute @s[scores={cam.tick=40}] ~ ~ ~ event entity @e[type=rwm:tractor_beam] despawn

execute @s[scores={cam.tick=0..40},tag=!dlgopened] ~ ~ ~ dialogue open @e[type=rwm:tarra] @s npc.boss.6.1
scoreboard players remove @s[scores={cam.tick=1..}] cam.tick 1