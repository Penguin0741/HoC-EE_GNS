
execute @s[scores={address=80100}] ~ ~ ~ setblock -119 72 171 gold_block
execute @s[scores={address=80100}] ~ ~ ~ fill -120 72 171 -120 73 171 gold_block
execute @s[scores={address=80100}] ~ ~ ~ fill -121 72 171 -121 74 171 gold_block
execute @s[scores={address=80100}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=80300}] ~ ~ ~ setblock -111 76 179 gold_block
execute @s[scores={address=80300}] ~ ~ ~ setblock -111 77 181 gold_block
execute @s[scores={address=80300}] ~ ~ ~ setblock -111 76 183 gold_block
execute @s[scores={address=80300}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=80500}] ~ ~ ~ fill -115 77 186 -115 77 189 gold_block
execute @s[scores={address=80500}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=80700}] ~ ~ ~ fill -119 78 198 -119 79 197 air
execute @s[scores={address=80700}] ~ ~ ~ tag @s add end_signal