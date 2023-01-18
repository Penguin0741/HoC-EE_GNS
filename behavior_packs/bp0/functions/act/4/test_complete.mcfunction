
execute @s[scores={address=40100}] ~ ~ ~ tp @c -57 76 124
execute @s[scores={address=40100}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=40200}] ~ ~ ~ tp @e[type=rwm:clay_golem] -57 75 134
execute @s[scores={address=40200}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=40400}] ~ ~ ~ scoreboard players set @s var2 3
execute @s[scores={address=40400}] ~ ~ ~ tag @s add end_signal
