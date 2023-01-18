
execute @s[scores={address=90100}] ~ ~ ~ fill -108 78 121 -108 78 127 redstone_block
execute @s[scores={address=90100}] ~ ~ ~ scoreboard players set @s var2 1
execute @s[scores={address=90100}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=90300}] ~ ~ ~ setblock -118 75 120 gold_block
execute @s[scores={address=90300}] ~ ~ ~ setblock -122 75 120 gold_block
execute @s[scores={address=90300}] ~ ~ ~ setblock -120 75 122 gold_block
execute @s[scores={address=90300}] ~ ~ ~ setblock -118 75 124 gold_block
execute @s[scores={address=90300}] ~ ~ ~ setblock -122 75 124 gold_block
execute @s[scores={address=90300}] ~ ~ ~ scoreboard players set @s var2 1
execute @s[scores={address=90300}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=90500}] ~ ~ ~ fill -134 73 118 -140 73 126 stained_glass 0 replace wool -1
execute @s[scores={address=90500}] ~ ~ ~ scoreboard players set @s var1 2
execute @s[scores={address=90500}] ~ ~ ~ tag @s add end_signal
execute @s[scores={address=90600}] ~ ~ ~ fill -134 73 118 -140 73 126 stained_glass 0 replace wool -1
execute @s[scores={address=90600}] ~ ~ ~ scoreboard players set @s var1 2
execute @s[scores={address=90600}] ~ ~ ~ tag @s add end_signal
execute @s[scores={address=90700}] ~ ~ ~ fill -134 73 118 -140 73 126 stained_glass 0 replace wool -1
execute @s[scores={address=90700}] ~ ~ ~ scoreboard players set @s var1 2
execute @s[scores={address=90700}] ~ ~ ~ tag @s add end_signal
