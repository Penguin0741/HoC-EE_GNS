
scoreboard players set @a address 110900
scoreboard players set @a tick 0
scoreboard players set @a hint 0
scoreboard players set @a var1 40
scoreboard players set @a var2 0
scoreboard players set @a var3 0
scoreboard players set @a var4 0
scoreboard players set @a var5 0
scoreboard players set @a var6 0
scoreboard players set @a var7 0
scoreboard players set @a var8 0
scoreboard players set @a queue_delay 10
function url
tag @s remove debug_run

tag @a remove dlgopened

event entity @e[type=rwm:cam] despawn
event entity @e[type=rwm:actor] despawn
event entity @e[type=rwm:tarra] despawn

effect @s blindness 0
effect @s blindness 2 0 true

time set 1000
structure load intro:house1 -29 67 -168

fill -19 78 -159 -18 79 -159 air
fill -20 77 -158 -15 77 -158 wool 15
fill -20 77 -157 -15 80 -157 wool 15

event entity @e[type=rwm:time_agent] despawn
summon rwm:time_agent -16 78 -158 skin_1
event entity @e[type=rwm:time_agent] hide_name
event entity @e[type=rwm:time_agent] movement_fly
execute @e[type=rwm:time_agent] ~ ~ ~ tp @s ~ ~ ~ 180 0

fill -11 71 -160 -11 67 -167 barrier 0 replace air
fill -13 71 -160 -13 67 -167 barrier 0 replace air

tp @s -15 69 -176 -31 0

# /structure save outro:cam_actor -19 64 -197 -5 84 -160 true disk
structure load outro:cam_actor -19 64 -197 0_degrees none true false

tp @e[tag=actor.tarra] 0 70 0

effect @a invisibility 1000000 0 true
tag @a add cam.ride

scoreboard players set @s cam.next 10
scoreboard players set @s cam.tick 0