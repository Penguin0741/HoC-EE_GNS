execute @s[scores={cam.tick=70}] ~ ~ ~ camerashake add @s 0.25 1 positional
execute @s[scores={cam.tick=60}] ~ ~ ~ event entity @e[tag=actor.player] tongue
execute @s[scores={cam.tick=70}] ~ ~ ~ playsound rwm.rumble @a ~ ~ ~ 1 1 1
execute @s[scores={cam.tick=25}] ~ ~ ~ playsound mob.ravager.bite @a ~ ~ ~ 1 0.7 1
execute @s[scores={cam.tick=1}] ~ ~ ~ playsound mob.wanderingtrader.drink_potion @a ~ ~ ~ 1 0.7 1
execute @s[scores={cam.tick=60}] ~ ~ ~ structure load "intro:house2" -29 67 -168
execute @s[scores={cam.tick=57}] ~ ~ ~ structure load "intro:house3" -29 67 -168
execute @s[scores={cam.tick=54}] ~ ~ ~ structure load "intro:house4" -29 67 -168
execute @s[scores={cam.tick=51}] ~ ~ ~ structure load "intro:house5" -29 67 -168
execute @s[scores={cam.tick=50}] ~ ~ ~ camerashake add @s 0.5 0.5 positional
execute @s[scores={cam.tick=48}] ~ ~ ~ structure load "intro:house6" -29 67 -168
execute @s[scores={cam.tick=45}] ~ ~ ~ structure load "intro:house7" -29 67 -168
execute @s[scores={cam.tick=42}] ~ ~ ~ structure load "intro:house8" -29 67 -168
execute @s[scores={cam.tick=40}] ~ ~ ~ camerashake add @s 1 0.5 positional
execute @s[scores={cam.tick=39}] ~ ~ ~ structure load "intro:house9" -29 67 -168
execute @s[scores={cam.tick=36}] ~ ~ ~ structure load "intro:house10" -29 67 -168
execute @s[scores={cam.tick=33}] ~ ~ ~ structure load "intro:house11" -29 67 -168
execute @s[scores={cam.tick=30}] ~ ~ ~ structure load "intro:house12" -29 67 -168
execute @s[scores={cam.tick=30}] ~ ~ ~ camerashake add @s 0.5 0.5 positional
execute @s[scores={cam.tick=27}] ~ ~ ~ structure load "intro:house13" -29 67 -168
execute @s[scores={cam.tick=24}] ~ ~ ~ structure load "intro:house14" -29 67 -168
execute @s[scores={cam.tick=21}] ~ ~ ~ structure load "intro:house15" -29 67 -168
execute @s[scores={cam.tick=20}] ~ ~ ~ camerashake add @s 0.25 1 positional
execute @s[scores={cam.tick=18}] ~ ~ ~ structure load "intro:house16" -29 67 -168
execute @s[scores={cam.tick=1}] ~ ~ ~ scoreboard players set @s cam.next 41
scoreboard players remove @s[scores={cam.tick=1..}] cam.tick 1