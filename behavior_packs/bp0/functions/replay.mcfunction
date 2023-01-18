
tag @s add replay
tag @s add started

function clear_entities

scoreboard players set @s second 0
scoreboard players set @s lookcount 0
scoreboard players set @s movecount 0
scoreboard players set @s timer 0
scoreboard players set @s agent 0
scoreboard players set @s language 0
scoreboard players set @s hint 0
scoreboard players set @s path 1
scoreboard players set @s room_variant 0
scoreboard players set @s notebook_page 0
scoreboard players set @s boss_activity 0
scoreboard players set @s queue_slot 0
scoreboard players set @s queue_tick 0
scoreboard players set @s queue_delay 10
scoreboard players set @s code_state 0

time set midnight
codebuilder runtime stop @s

#> Player
execute @s ~ ~ ~ kill @c
clear @s
teleport @s -12 55 -326 0 0
spawnpoint @s ~ ~ ~
setworldspawn -12 55 -326

function act/0/-2