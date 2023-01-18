
execute @s[scores={address=110200}] ~ ~ ~ setblock 224 41 -567 concrete 2
execute @s[scores={address=110200}] ~ ~ ~ setblock 224 41 -569 concrete 4
execute @s[scores={address=110200}] ~ ~ ~ setblock 226 41 -569 concrete 3
execute @s[scores={address=110200}] ~ ~ ~ setblock 226 41 -567 concrete 5
execute @s[scores={address=110200}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=110400,boss_activity=1}] ~ ~ ~ setblock 168 52 -551 lever 10
execute @s[scores={address=110400,boss_activity=2}] ~ ~ ~ setblock 191 47 -630 lever 9
execute @s[scores={address=110400,boss_activity=3}] ~ ~ ~ setblock 259 46 -630 lever 10
execute @s[scores={address=110400,boss_activity=4}] ~ ~ ~ setblock 246 45 -541 lever 11
execute @s[scores={address=110400}] ~ ~ ~ tag @s add end_signal

execute @s[scores={address=110600}] ~ ~ ~ tag @s add start_signal
execute @s[scores={address=110600}] ~ ~ ~ scoreboard players set @s queue_tick 40
execute @s[scores={address=110600}] ~ ~ ~ setblock 0 0 0 concrete 3
execute @s[scores={address=110600}] ~ ~ ~ setblock 0 1 0 concrete 5
execute @s[scores={address=110600}] ~ ~ ~ setblock 0 2 0 concrete 4
execute @s[scores={address=110600}] ~ ~ ~ setblock 0 3 0 concrete 2
execute @s[scores={address=110600}] ~ ~ ~ scoreboard players set @s queue_slot 4
execute @s[scores={address=110600}] ~ ~ ~ scoreboard players set @s code_state 3

execute @s[scores={address=110700}] ~ ~ ~ scoreboard players set @s queue_tick 40
execute @s[scores={address=110700}] ~ ~ ~ setblock 0 0 0 concrete 2
execute @s[scores={address=110700}] ~ ~ ~ setblock 0 1 0 concrete 3
execute @s[scores={address=110700}] ~ ~ ~ setblock 0 2 0 concrete 5
execute @s[scores={address=110700}] ~ ~ ~ setblock 0 3 0 concrete 5
execute @s[scores={address=110700}] ~ ~ ~ scoreboard players set @s queue_slot 4
execute @s[scores={address=110700}] ~ ~ ~ scoreboard players set @s code_state 3