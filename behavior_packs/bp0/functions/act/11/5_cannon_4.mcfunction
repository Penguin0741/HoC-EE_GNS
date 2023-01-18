
summon rwm:cannon 240 42 -573
tag @e[type=rwm:cannon,tag=!init] add cannon_4
tag @e[type=rwm:cannon,tag=!init] add init
tag @s add cannon_4

event entity @e[type=rwm:cannon,tag=cannon_4] lime

scoreboard players set @s[scores={path=2..3}] var1 4
scoreboard players add @s[scores={path=2..3}] address 1