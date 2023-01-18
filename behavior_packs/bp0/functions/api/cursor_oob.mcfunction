
event entity @e[type=rwm:cursor] desat
execute @e[type=rwm:cursor] ~ ~ ~ tp @s ~ ~ ~
tag @a[tag=main_player] add end_signal
function api/stop_code
execute @a[tag=main_player,scores={address=30100,var2=..34,path=1}] ~ ~ ~ scoreboard players add @s address 2
execute @a[tag=main_player,scores={address=30100,path=2..3}] ~ ~ ~ scoreboard players add @s address 2
execute @a[tag=main_player,scores={address=80100}] ~ ~ ~ scoreboard players add @s address 2
execute @a[tag=main_player,scores={address=80700,var1=5}] ~ ~ ~ scoreboard players add @s address 2