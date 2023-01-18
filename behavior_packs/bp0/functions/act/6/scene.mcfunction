#> @a

tellraw @s[tag=debug_loop] {"rawtext":[{"text":"act/6/scene"}]}

execute @s[scores={address=60000}] ~ ~ ~ function act/6/0_
execute @s[scores={address=60100}] ~ ~ ~ function act/6/1_
execute @s[scores={address=60101}] ~ ~ ~ function act/6/1_success
execute @s[scores={address=60102}] ~ ~ ~ function act/6/1_failure
execute @s[scores={address=60103}] ~ ~ ~ function act/6/1_start
execute @s[scores={address=60200}] ~ ~ ~ function act/6/2_
execute @s[scores={address=60300}] ~ ~ ~ function act/6/3_
execute @s[scores={address=60301}] ~ ~ ~ function act/6/3_success
execute @s[scores={address=60302}] ~ ~ ~ function act/6/3_failure
execute @s[scores={address=60400}] ~ ~ ~ function act/6/4_
execute @s[scores={address=60500}] ~ ~ ~ function act/6/5_
execute @s[scores={address=60501}] ~ ~ ~ function act/6/5_success
execute @s[scores={address=60502}] ~ ~ ~ function act/6/5_failure
execute @s[scores={address=60600}] ~ ~ ~ function act/6/6_