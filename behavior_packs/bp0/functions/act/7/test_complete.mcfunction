
execute @s[scores={address=70100}] ~ ~ ~ tp @e[type=rwm:enderman_butler] -115 81 59
execute @s[scores={address=70100}] ~ ~ ~ setblock -115 81 58 lever 11
execute @s[scores={address=70100}] ~ ~ ~ setblock -115 82 57 lit_redstone_lamp
execute @s[scores={address=70100}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=70300}] ~ ~ ~ tp @e[type=rwm:enderman_butler] -128 76 60
execute @s[scores={address=70300}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=70500}] ~ ~ ~ tag @s add start_signal
execute @s[scores={address=70500,var2=1}] ~ ~ ~ setblock 0 0 0 concrete 4
execute @s[scores={address=70500,var2=1}] ~ ~ ~ setblock 0 1 0 concrete 5
execute @s[scores={address=70500,var2=1}] ~ ~ ~ scoreboard players set @s queue_slot 2
execute @s[scores={address=70500,var2=1}] ~ ~ ~ scoreboard players set @s code_state 3
execute @s[scores={address=70500,var2=2}] ~ ~ ~ setblock 0 0 0 concrete 3
execute @s[scores={address=70500,var2=2}] ~ ~ ~ setblock 0 1 0 concrete 5
execute @s[scores={address=70500,var2=2}] ~ ~ ~ setblock 0 2 0 concrete 6
execute @s[scores={address=70500,var2=2}] ~ ~ ~ scoreboard players set @s queue_slot 3
execute @s[scores={address=70500,var2=2}] ~ ~ ~ scoreboard players set @s code_state 3
execute @s[scores={address=70500,var2=3}] ~ ~ ~ setblock 0 0 0 concrete 5
execute @s[scores={address=70500,var2=3}] ~ ~ ~ setblock 0 1 0 concrete 4
execute @s[scores={address=70500,var2=3}] ~ ~ ~ setblock 0 2 0 concrete 6
execute @s[scores={address=70500,var2=3}] ~ ~ ~ setblock 0 3 0 concrete 3
execute @s[scores={address=70500,var2=3}] ~ ~ ~ scoreboard players set @s queue_slot 4
execute @s[scores={address=70500,var2=3}] ~ ~ ~ scoreboard players set @s code_state 3