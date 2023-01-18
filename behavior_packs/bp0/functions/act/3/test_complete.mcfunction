
execute @s[scores={address=30100}] ~ ~ ~ fill 13 72 169 13 72 166 gold_block
execute @s[scores={address=30100}] ~ ~ ~ fill 13 73 166 13 73 165 gold_block
execute @s[scores={address=30100}] ~ ~ ~ fill 13 74 165 13 74 163 gold_block

execute @s[scores={address=30300}] ~ ~ ~ setblock 45 75 169 rwm:mosaic_1
execute @s[scores={address=30300}] ~ ~ ~ setblock 45 75 170 rwm:mosaic_2
execute @s[scores={address=30300}] ~ ~ ~ setblock 45 75 171 rwm:mosaic_3
execute @s[scores={address=30300}] ~ ~ ~ setblock 45 74 169 rwm:mosaic_4
execute @s[scores={address=30300}] ~ ~ ~ setblock 45 74 170 rwm:mosaic_5
execute @s[scores={address=30300}] ~ ~ ~ setblock 45 74 171 rwm:mosaic_6
execute @s[scores={address=30300}] ~ ~ ~ setblock 45 73 170 rwm:mosaic_7
execute @s[scores={address=30300}] ~ ~ ~ setblock 45 73 171 rwm:mosaic_8
execute @s[scores={address=30300}] ~ ~ ~ setblock 45 73 169 air
execute @s[scores={address=30300}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=30600}] ~ ~ ~ tp @e[type=rwm:king] 30 70 166
execute @s[scores={address=30600}] ~ ~ ~ tp @e[type=rwm:queen] 31 70 169
execute @s[scores={address=30600}] ~ ~ ~ scoreboard players set @s var1 4
execute @s[scores={address=30600}] ~ ~ ~ scoreboard players set @s var2 1
execute @s[scores={address=30600}] ~ ~ ~ scoreboard players set @s var3 5
execute @s[scores={address=30600}] ~ ~ ~ scoreboard players set @s var4 4
execute @s[scores={address=30600}] ~ ~ ~ tag @s add end_signal