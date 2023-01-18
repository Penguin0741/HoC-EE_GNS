
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ execute @e[type=rwm:diner_creeper] ~ ~ ~ particle rwm:diner_checkmark ~ ~1.5 ~
execute @s[scores={tick=100}] ~ ~ ~ execute @e[type=rwm:diner_wither_skeleton] ~ ~ ~ particle rwm:diner_checkmark ~ ~1.5 ~
execute @s[scores={tick=100}] ~ ~ ~ execute @e[type=rwm:diner_zombie] ~ ~ ~ particle rwm:diner_checkmark ~ ~1.5 ~
execute @s[scores={tick=100}] ~ ~ ~ execute @e[type=rwm:diner_skeleton] ~ ~ ~ particle rwm:diner_checkmark ~ ~1.5 ~
execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:plate,x=29,y=72,z=128,dx=0,dy=1,dz=0] despawn
execute @s[scores={tick=100}] ~ ~ ~ summon rwm:plate 29 72 128
execute @s[scores={tick=100}] ~ ~ ~ particle rwm:eat_1 29 72 128
execute @s[scores={tick=100}] ~ ~ ~ playsound random.eat @a ~ ~ ~ 1 1 1
execute @s[scores={tick=80}] ~ ~ ~ event entity @e[type=rwm:plate,x=29,y=72,z=125,dx=0,dy=1,dz=0] despawn
execute @s[scores={tick=80}] ~ ~ ~ summon rwm:plate 29 72 125
execute @s[scores={tick=80}] ~ ~ ~ particle rwm:eat_2 29 72 125
execute @s[scores={tick=80}] ~ ~ ~ playsound random.eat @a ~ ~ ~ 1 1 1
execute @s[scores={tick=60}] ~ ~ ~ event entity @e[type=rwm:plate,x=32,y=72,z=125,dx=0,dy=1,dz=0] despawn
execute @s[scores={tick=60}] ~ ~ ~ summon rwm:plate 32 72 125
execute @s[scores={tick=60}] ~ ~ ~ particle rwm:eat_3 32 72 125
execute @s[scores={tick=60}] ~ ~ ~ playsound random.eat @a ~ ~ ~ 1 1 1
execute @s[scores={tick=40}] ~ ~ ~ event entity @e[type=rwm:plate,x=32,y=72,z=128,dx=0,dy=1,dz=0] despawn
execute @s[scores={tick=40}] ~ ~ ~ summon rwm:plate 32 72 128
execute @s[scores={tick=40}] ~ ~ ~ particle rwm:eat_4 32 72 128
execute @s[scores={tick=40}] ~ ~ ~ playsound random.eat @a ~ ~ ~ 1 1 1
execute @s[scores={tick=20}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={tick=20}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.room_cleared","with": ["\n"]}]}
execute @s[scores={tick=20}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"sub.room_2","with": ["\n"]}]}
execute @s[scores={tick=20}] ~ ~ ~ playsound random.levelup @a ~ ~ ~ 1 1 1
execute @s[scores={tick=1}] ~ ~ ~ function act/2/5