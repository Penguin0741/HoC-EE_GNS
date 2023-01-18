
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ playsound tile.piston.in @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=100}] ~ ~ ~ fill -52 74 123 -52 75 123 air
execute @s[scores={tick=80}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=80}] ~ ~ ~ fill -56 74 120 -56 77 120 glass
execute @s[scores={tick=70}] ~ ~ ~ fill -56 74 121 -56 77 121 glass
execute @s[scores={tick=60}] ~ ~ ~  fill -56 74 122 -56 77 122 glass
execute @s[scores={tick=50}] ~ ~ ~  fill -56 74 123 -56 77 123 glass
execute @s[scores={tick=40}] ~ ~ ~  fill -56 74 124 -56 77 124 glass
execute @s[scores={tick=60}] ~ ~ ~ tp @c -57 75 122 90 0
execute @s[scores={tick=40}] ~ ~ ~ scoreboard players remove @s address 3
