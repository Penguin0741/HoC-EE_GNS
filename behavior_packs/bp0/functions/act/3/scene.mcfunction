#> @a

tellraw @s[tag=debug_loop] {"rawtext":[{"text":"act/3/scene"}]}

execute @s[scores={address=30000}] ~ ~ ~ function act/3/0_
execute @s[scores={address=30100}] ~ ~ ~ function act/3/1_
execute @s[scores={address=30101}] ~ ~ ~ function act/3/1_success
execute @s[scores={address=30102}] ~ ~ ~ function act/3/1_failure
execute @s[scores={address=30200}] ~ ~ ~ function act/3/2_
execute @s[scores={address=30201}] ~ ~ ~ function act/3/2_success
execute @s[scores={address=30300}] ~ ~ ~ function act/3/3_
execute @s[scores={address=30301}] ~ ~ ~ function act/3/3_success
execute @s[scores={address=30302}] ~ ~ ~ function act/3/3_failure
execute @s[scores={address=30303}] ~ ~ ~ function act/3/3_start
execute @s[scores={address=30400}] ~ ~ ~ function act/3/4_
execute @s[scores={address=30401}] ~ ~ ~ function act/3/4_success
execute @s[scores={address=30500}] ~ ~ ~ function act/3/5_
execute @s[scores={address=30600}] ~ ~ ~ function act/3/6_
execute @s[scores={address=30601}] ~ ~ ~ function act/3/6_success
execute @s[scores={address=30602}] ~ ~ ~ function act/3/6_failure
execute @s[scores={address=30700}] ~ ~ ~ function act/3/7_