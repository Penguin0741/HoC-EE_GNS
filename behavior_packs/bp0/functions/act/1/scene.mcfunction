#> @a

tellraw @s[tag=debug_loop] {"rawtext":[{"text":"act/1/scene"}]}

execute @s[scores={address=10000}] ~ ~ ~ function act/1/0_
execute @s[scores={address=10100}] ~ ~ ~ function act/1/1_
execute @s[scores={address=10101}] ~ ~ ~ function act/1/1_success
execute @s[scores={address=10102}] ~ ~ ~ function act/1/1_failure
execute @s[scores={address=10103}] ~ ~ ~ function act/1/1_start
execute @s[scores={address=10200}] ~ ~ ~ function act/1/2_
execute @s[scores={address=10201}] ~ ~ ~ function act/1/2_success
execute @s[scores={address=10300}] ~ ~ ~ function act/1/3_
execute @s[scores={address=10400}] ~ ~ ~ function act/1/4_
execute @s[scores={address=10401}] ~ ~ ~ function act/1/4_success
execute @s[scores={address=10402}] ~ ~ ~ function act/1/4_failure
execute @s[scores={address=10500}] ~ ~ ~ function act/1/5_
execute @s[scores={address=10600}] ~ ~ ~ function act/1/6_
execute @s[scores={address=10700}] ~ ~ ~ function act/1/7_
execute @s[scores={address=10701}] ~ ~ ~ function act/1/7_success
execute @s[scores={address=10800}] ~ ~ ~ function act/1/8_