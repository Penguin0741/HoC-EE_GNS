
execute @s[scores={address=10100}] ~ ~ ~ tp @c 36 72 91
execute @s[scores={address=10100}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=10400}] ~ ~ ~ fill 42 74 78 42 76 84 air
execute @s[scores={address=10400}] ~ ~ ~ fill 42 74 83 42 74 79 lit_pumpkin 1
execute @s[scores={address=10400}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=10700}] ~ ~ ~ setblock 0 0 0 concrete 3
execute @s[scores={address=10700}] ~ ~ ~ setblock 0 1 0 concrete 2
execute @s[scores={address=10700}] ~ ~ ~ setblock 0 2 0 concrete 4
execute @s[scores={address=10700}] ~ ~ ~ setblock 0 3 0 concrete 1
execute @s[scores={address=10700}] ~ ~ ~ scoreboard players set @s queue_slot 4
execute @s[scores={address=10700}] ~ ~ ~ scoreboard players set @s code_state 3