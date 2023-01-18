
execute @s[scores={tick=0}] ~ ~ ~ scoreboard players set @s tick 100

execute @s[scores={tick=100}] ~ ~ ~ event entity @e[type=rwm:laser] despawn
execute @s[scores={tick=100}] ~ ~ ~ setblock -144 72 121 redstone_block
execute @s[scores={tick=100}] ~ ~ ~ setblock -132 70 121 air
execute @s[scores={tick=100}] ~ ~ ~ setblock -145 72 121 air
execute @s[scores={tick=100}] ~ ~ ~ setblock -143 72 121 iron_block
execute @s[scores={tick=70}] ~ ~ ~ setblock -132 70 119 redstone_block
execute @s[scores={tick=70}] ~ ~ ~ setblock -132 70 123 redstone_block
execute @s[scores={tick=70}] ~ ~ ~ setblock -132 70 125 redstone_block
execute @s[scores={tick=60}] ~ ~ ~ setblock -145 72 119 redstone_block
execute @s[scores={tick=60}] ~ ~ ~ setblock -145 72 123 redstone_block
execute @s[scores={tick=60}] ~ ~ ~ setblock -145 72 125 redstone_block
execute @s[scores={tick=50}] ~ ~ ~ setblock -137 73 117 air
execute @s[scores={tick=50}] ~ ~ ~ setblock -137 73 127 air
execute @s[scores={tick=50}] ~ ~ ~ structure load "room9:greenline" -134 73 118
execute @s[scores={tick=50}] ~ ~ ~ structure load "room9:yellowline" -137 73 118
execute @s[scores={tick=50}] -133 73 119 summon rwm:laser ~ ~ ~
execute @s[scores={tick=50}] -133 73 119 tag @e[type=rwm:laser,c=1] add laser1
execute @s[scores={tick=50}] -133 73 123 summon rwm:laser ~ ~ ~
execute @s[scores={tick=50}] -133 73 123 tag @e[type=rwm:laser,c=1] add laser2
execute @s[scores={tick=50}] -133 73 125 summon rwm:laser ~ ~ ~
execute @s[scores={tick=50}] -133 73 125 tag @e[type=rwm:laser,c=1] add laser3
execute @s[scores={tick=41}] ~ ~ ~ scoreboard players remove @s address 3
execute @s[scores={tick=41}] ~ ~ ~ scoreboard players set @s tick 0
