
summon rwm:cannon 210 42 -603
tag @e[type=rwm:cannon,tag=!init] add cannon_2
tag @e[type=rwm:cannon,tag=!init] add init
tag @s add cannon_2

event entity @e[type=rwm:cannon,tag=cannon_2] yellow

scoreboard players set @s[scores={path=2..3}] var1 2
scoreboard players add @s[scores={path=2..3}] address 1