
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 40

execute @s[scores={tick=40}] ~ ~ ~ playsound tile.piston.in @a ~ ~ ~ 1 0.7 1
execute @s[scores={tick=40}] ~ ~ ~ clone -104 77 122 -104 77 122 -104 76 122
execute @s[scores={tick=40}] ~ ~ ~ fill -104 77 122 -104 78 122 air
execute @s[scores={tick=5}] ~ ~ ~ setblock -108 78 127 redstone_block
execute @s[scores={tick=1}] ~ ~ ~ playsound tile.piston.in @a ~ ~ ~ 1 1.5 1
execute @s[scores={tick=1}] ~ ~ ~ structure load "room9:door2" -108 77 117
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 3