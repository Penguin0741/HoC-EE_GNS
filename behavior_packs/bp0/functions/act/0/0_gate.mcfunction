
execute @s[scores={cam.tick=30}] ~ ~ ~ playsound block.grindstone.use @a ~ ~ ~ 1 0.5 1
execute @s[scores={cam.tick=30}] ~ ~ ~ structure load intro:gate2 -18 68 -288
execute @s[scores={cam.tick=25}] ~ ~ ~ structure load intro:gate3 -18 68 -288
execute @s[scores={cam.tick=20}] ~ ~ ~ structure load intro:gate4 -18 68 -288
execute @s[scores={cam.tick=15}] ~ ~ ~ structure load intro:gate5 -18 68 -288
execute @s[scores={cam.tick=10}] ~ ~ ~ structure load intro:gate6 -18 68 -288
execute @s[scores={cam.tick=5}] ~ ~ ~ structure load intro:gate7 -18 68 -288
execute @s[scores={cam.tick=1}] ~ ~ ~ scoreboard players set @s cam.next 31
scoreboard players remove @s[scores={cam.tick=1..}] cam.tick 1