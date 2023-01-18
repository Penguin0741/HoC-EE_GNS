
function act/6/0

scoreboard players set @s var1 99
effect @s blindness 99999 1 true
effect @s slowness 99999 1 true
playsound portal.trigger @a ~ ~ ~ 1 1 1

scoreboard players set @s room_variant 3

structure load "hoc:room6_3" -70 68 148