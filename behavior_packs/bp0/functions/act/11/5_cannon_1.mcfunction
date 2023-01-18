
summon rwm:cannon 210 42 -573
tag @e[type=rwm:cannon,tag=!init] add cannon_1
tag @e[type=rwm:cannon,tag=!init] add init
tag @s add cannon_1

event entity @e[type=rwm:cannon,tag=cannon_1] magenta

scoreboard players set @s[scores={path=2..3}] var1 1
scoreboard players add @s[scores={path=2..3}] address 1