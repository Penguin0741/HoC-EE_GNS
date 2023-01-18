
ride @s[tag=cam.ride] start_riding @e[type=rwm:cam,tag=cam.mount] teleport_rider

# CUTSCENE 3

execute @s[scores={cam.next=10}] ~ ~ ~ event entity @e[tag=cam.dolly] speed_01
execute @s[scores={cam.next=10}] ~ ~ ~ event entity @e[tag=actor.player] speed_08

execute @s[scores={cam.next=12}] ~ ~ ~ teleport @e[tag=cam.dolly_mark] 29 72 156
execute @s[scores={cam.next=12}] ~ ~ ~ teleport @e[tag=actor.player_mark] 29 72 156
execute @s[scores={cam.next=12}] ~ ~ ~ scoreboard players set @s cam.tick 30
execute @s[scores={cam.next=12}] ~ ~ ~ scoreboard players set @s cam.next 20

execute @s[scores={cam.next=20}] ~ ~ ~ function act/3/7_host

execute @s[scores={cam.next=30}] ~ ~ ~ function act/3/7_agents

execute @s[scores={cam.next=40}] ~ ~ ~ function act/3/7_tarra

execute @s[scores={cam.next=50}] ~ ~ ~ function act/3/7_escape

execute @s[scores={cam.next=61}] ~ ~ ~ effect @s blindness 99999 0 true
execute @s[scores={cam.next=62}] ~ ~ ~ function act/11/0

execute @s[scores={path=1}] ~ ~ ~ particle rwm:hallway_green 29 72 152
execute @s[scores={path=1}] ~ ~ ~ particle rwm:hallway_green 29 74 152
execute @s[scores={path=2}] ~ ~ ~ particle rwm:hallway_yellow 29 72 152
execute @s[scores={path=2}] ~ ~ ~ particle rwm:hallway_yellow 29 74 152
execute @s[scores={path=3}] ~ ~ ~ particle rwm:hallway_red 29 72 152
execute @s[scores={path=3}] ~ ~ ~ particle rwm:hallway_red 29 74 152

execute @e[type=rwm:actor,x=29,y=71,z=165,dx=0,dy=1,dz=0] ~ ~ ~ tp @s ~ ~ ~-0.1