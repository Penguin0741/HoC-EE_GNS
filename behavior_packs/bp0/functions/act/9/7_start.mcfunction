
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 50

execute @s[scores={tick=50}] ~ ~ ~ setblock -143 72 119 air
execute @s[scores={tick=50}] ~ ~ ~ setblock -143 72 123 air
execute @s[scores={tick=50}] ~ ~ ~ setblock -143 72 125 air
execute @s[scores={tick=50}] ~ ~ ~ setblock -140 73 117 air
execute @s[scores={tick=50}] ~ ~ ~ setblock -140 73 127 air
execute @s[scores={tick=50}] ~ ~ ~ structure load "room9:greenline" -134 73 118
execute @s[scores={tick=50}] ~ ~ ~ structure load "room9:yellowline" -137 73 118
execute @s[scores={tick=50}] ~ ~ ~ structure load "room9:redline" -140 73 118
execute @s[scores={tick=50}] ~ ~ ~ event entity @e[type=rwm:laser] length_1
execute @s[scores={tick=1}] ~ ~ ~ scoreboard players remove @s address 3
