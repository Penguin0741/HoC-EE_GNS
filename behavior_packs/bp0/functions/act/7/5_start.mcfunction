
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 240

execute @s[scores={tick=240}] ~ ~ ~ playsound block.loom.use @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=240}] ~ ~ ~ structure load "room7:simonz" -134 80 49
execute @s[scores={tick=220}] ~ ~ ~ structure load "room7:simonz" -134 81 49
execute @s[scores={tick=200}] ~ ~ ~ structure load "room7:simonz" -134 82 49
execute @s[scores={tick=240}] ~ ~ ~ structure load "room7:simonz" -122 80 49
execute @s[scores={tick=220}] ~ ~ ~ structure load "room7:simonz" -122 81 49
execute @s[scores={tick=200}] ~ ~ ~ structure load "room7:simonz" -122 82 49
execute @s[scores={tick=240}] ~ ~ ~ structure load "room7:simonx" -131 80 44
execute @s[scores={tick=220}] ~ ~ ~ structure load "room7:simonx" -131 81 44
execute @s[scores={tick=200}] ~ ~ ~ structure load "room7:simonx" -131 82 44
execute @s[scores={tick=240}] ~ ~ ~ structure load "room7:simonx" -126 80 44
execute @s[scores={tick=220}] ~ ~ ~ structure load "room7:simonx" -126 81 44
execute @s[scores={tick=200}] ~ ~ ~ structure load "room7:simonx" -126 82 44
execute @s[scores={tick=160}] ~ ~ ~ function act/7/5_lamp_pink
execute @s[scores={tick=120}] ~ ~ ~ playsound random.fizz @a ~ ~ ~ 1 1 1
execute @s[scores={tick=120}] ~ ~ ~ particle rwm:simon_fizzle -131 83.5 44
execute @s[scores={tick=120}] ~ ~ ~ particle rwm:simon_fizzle -130 83.5 44
execute @s[scores={tick=120}] ~ ~ ~ fill -130 81 44 -131 81 44 stone
execute @s[scores={tick=80}] ~ ~ ~ tp @e[tag=target] -131 81.5 45
execute @s[scores={tick=40}] ~ ~ ~ function act/7/5_lamp_pink
execute @s[scores={tick=30}] ~ ~ ~ tp @e[tag=target] -128 81.5 49
execute @s[scores={tick=1}] ~ ~ ~ playsound random.orb @a ~ ~ ~ 1 1 1
execute @s[scores={tick=1}] ~ ~ ~ fill -130 81 44 -131 81 44 stone
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players set @s var1 30
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 3
