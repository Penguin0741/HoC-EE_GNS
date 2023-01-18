
summon rwm:cannon 240 42 -603
tag @e[type=rwm:cannon,tag=!init] add cannon_3
tag @e[type=rwm:cannon,tag=!init] add init
tag @s add cannon_3

event entity @e[type=rwm:cannon,tag=cannon_3] cyan

scoreboard players set @s[scores={path=2..3}] var1 3
scoreboard players add @s[scores={path=2..3}] address 1